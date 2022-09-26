-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Complex multipler
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity mixer is
  generic(
    g_PRECISION                   : integer := 32
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    -- 1024 Synchronizer out stream
    s_axis0_tdata                 : in  std_logic_vector(127 downto 0);
    s_axis0_tvalid                : in  std_logic;
    s_axis0_tid                   : in  std_logic_vector(7 downto 0);
    s_axis0_tuser                 : in  std_logic_vector(7 downto 0);
    s_axis0_tlast                 : in  std_logic;

    -- exp(-1i*cfo*t) stream
    s_axis1_tdata                 : in  std_logic_vector(g_PRECISION*4-1 downto 0);
    s_axis1_tvalid                : in  std_logic;
    s_axis1_tid                   : in  std_logic_vector(7 downto 0);
    s_axis1_tuser                 : in  std_logic_vector(7 downto 0);
    s_axis1_tlast                 : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic
  );
end entity mixer;
 
architecture RTL of mixer is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk      : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk      : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis0:s_axis1:m_axis, FREQ_HZ 250000000";

  constant DELAY_VAL              : integer         := 6;
  signal tlast_pipe               : std_logic_vector(DELAY_VAL-1 downto 0);
  signal tlast                    : std_logic;
  signal w_axis_tdata             : std_logic_vector(255 downto 0);
  signal out_tvalid               : std_logic_vector(3 downto 0);
  signal out_tdata                : std_logic_vector(319 downto 0);

  component cmpy_0 is
    port(
      aclk                        : in  std_logic;
      aresetn                     : in  std_logic;

      s_axis_a_tvalid             : in  std_logic;
      s_axis_a_tdata              : in  std_logic_vector(31 downto 0);

      s_axis_b_tvalid             : in  std_logic;
      s_axis_b_tdata              : in  std_logic_vector(31 downto 0);

      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tdata           : out std_logic_vector(79 downto 0)
    );
  end component cmpy_0;

begin

  gen_mults : for i in 0 to 3 generate
    cmpy_inst1 : cmpy_0
      port map(
        aclk                        => axis_aclk,
        aresetn                     => axis_aresetn,

        s_axis_a_tvalid             => s_axis0_tvalid,
        s_axis_a_tdata              => s_axis0_tdata(32+32*i-1 downto 32*i),
 
        s_axis_b_tvalid             => s_axis1_tvalid,
        s_axis_b_tdata              => s_axis1_tdata(32+32*i-1 downto 32*i),
        --s_axis_b_tdata              => X"00010001",
 
        m_axis_dout_tvalid          => out_tvalid(i),
        m_axis_dout_tdata           => out_tdata(80+80*i-1 downto 80*i)
        --m_axis_dout_tdata           => m_axis_tdata(80+80*i-1 downto 80*i)
      );
  end generate gen_mults;

  m_axis_tvalid                     <= out_tvalid(0);
  -- Reframe 33-bit I and 33-bit Q data output from cmpy IP by dropping the LSB
  w_axis_tdata                      <= out_tdata(311 downto 280) & out_tdata(271 downto 240) &
                                       out_tdata(231 downto 200) & out_tdata(191 downto 160) &
                                       out_tdata(151 downto 120) & out_tdata(111 downto 80) &
                                       out_tdata(71  downto 40)  & out_tdata(31  downto 0);
  -- Drop 16 bits of IQ data
  m_axis_tdata                      <= w_axis_tdata(255 downto 240) & w_axis_tdata(223 downto 208) &
                                       w_axis_tdata(191 downto 176) & w_axis_tdata(159 downto 144) &
                                       w_axis_tdata(127 downto 112) & w_axis_tdata(95  downto 80 ) &
                                       w_axis_tdata(63  downto 48 ) & w_axis_tdata(31  downto 16 );

  -- Process to delay tlast 7 clock cycles
  P_TLAST_DELAY : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      tlast_pipe                    <= tlast_pipe(tlast_pipe'left-1 downto 0) & s_axis1_tlast;
    end if;
  end process P_TLAST_DELAY;

  m_axis_tlast                      <= tlast_pipe(tlast_pipe'left); 
  m_axis_tid                        <= (others => '0');
  m_axis_tuser                      <= (others => '0');

end architecture RTL;
