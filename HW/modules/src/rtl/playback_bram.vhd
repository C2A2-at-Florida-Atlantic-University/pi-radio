-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Read OFDM symbols from BRAM. Configurable
--      cycles per sample

-----------------------------------------------------------------
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity playback_bram is
  generic(
    g_SYMBOL_LENGTH               : integer := 1024
  );
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    playback_en                   : in  std_logic;
    num_symbols                   : in  std_logic_vector(3 downto 0);
    o_finish                      : out std_logic;

    BRAM_PORT_addr                : out std_logic_vector(13 downto 0);
    BRAM_PORT_clk                 : out std_logic;
    BRAM_PORT_dout                : in  std_logic_vector(127 downto 0);
    BRAM_PORT_rst                 : out std_logic;

    M_AXIS_tdata                  : out std_logic_vector(127 downto 0);
    M_AXIS_tvalid                 : out std_logic;
    M_AXIS_tlast                  : out std_logic
  );
end entity playback_bram;

architecture RTL of playback_bram is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_MODE      : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:M_AXIS, FREQ_HZ 249997498";

  attribute X_INTERFACE_INFO      of BRAM_PORT_addr   : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute X_INTERFACE_INFO      of BRAM_PORT_clk    : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute X_INTERFACE_INFO      of BRAM_PORT_rst    : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute X_INTERFACE_INFO      of BRAM_PORT_dout   : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";

  attribute X_INTERFACE_PARAMETER of BRAM_PORT_addr   : signal is "MASTER_TYPE OTHER, MODE MASTER";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_clk    : signal is "MASTER_TYPE OTHER, MODE MASTER";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_dout   : signal is "MASTER_TYPE OTHER, MODE MASTER";

  --signal BRAM_PORT_dout           : std_logic_vector(127 downto 0);
  --signal BRAM_PORT_addr           : std_logic_vector(13 downto 0);

  signal total_counter            : std_logic_vector(integer(ceil(log2(real(g_SYMBOL_LENGTH-1)))) downto 0);
  signal symbol_counter           : std_logic_vector(3 downto 0);

  signal bram_addr                : std_logic_vector(13 downto 0);
  signal finish                   : std_logic;
  signal m_axis_tvalid_1          : std_logic;
  signal m_axis_tlast_1           : std_logic;

begin
    
--  xpm_memory_sprom_inst : entity work.xpm_memory_sprom
--    generic map (
--      ADDR_WIDTH_A => 13,              -- DECIMAL
--      AUTO_SLEEP_TIME => 0,           -- DECIMAL
--      CASCADE_HEIGHT => 0,            -- DECIMAL
--      ECC_MODE => "no_ecc",           -- String
--      MEMORY_INIT_FILE => "c:/Projects/pi-radio/HW/modules/coe_samples.coe",     -- String
--      MEMORY_INIT_PARAM => "1",       -- String
--      MEMORY_OPTIMIZATION => "true",  -- String
--      MEMORY_PRIMITIVE => "auto",     -- String
--      MEMORY_SIZE => 16384,            -- DECIMAL
--      MESSAGE_CONTROL => 0,           -- DECIMAL
--      READ_DATA_WIDTH_A => 128,        -- DECIMAL
--      READ_LATENCY_A => 2,            -- DECIMAL
--      READ_RESET_VALUE_A => "0",      -- String
--      RST_MODE_A => "SYNC",           -- String
--      SIM_ASSERT_CHK => 0,            -- DECIMAL; 0=disable simulation messages, 1=enable simulation messages
--      USE_MEM_INIT => 1,              -- DECIMAL
--      USE_MEM_INIT_MMI => 0,          -- DECIMAL
--      WAKEUP_TIME => "disable_sleep"  -- String
--    )
--    port map (
--      dbiterra => open,                 -- 1-bit output: Leave open.
--      douta => BRAM_PORT_dout,          -- READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
--      sbiterra => open,                 -- 1-bit output: Leave open.
--      addra => BRAM_PORT_addr,          -- ADDR_WIDTH_A-bit input: Address for port A read operations.
--      clka => axis_aclk,                -- 1-bit input: Clock signal for port A.
--      ena => '1',                       -- 1-bit input: Memory enable signal for port A. Must be high on clock
                                        -- cycles when read operations are initiated. Pipelined internally.

      --injectdbiterra => injectdbiterra, -- 1-bit input: Do not change from the provided value.
      --injectsbiterra => injectsbiterra, -- 1-bit input: Do not change from the provided value.
      --regcea => regcea,                 -- 1-bit input: Do not change from the provided value.
--      rsta => '0',                     -- 1-bit input: Reset signal for the final port A output register
                                        -- stage. Synchronously resets output port douta to the value specified
                                        -- by parameter READ_RESET_VALUE_A.

--      sleep => '0'                    -- 1-bit input: sleep signal to enable the dynamic power saving feature.
--    );

  -- Process to read from BRAM
  P_BRAM_READ : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      if playback_en = '0' then
        bram_addr                 <= (others => '0');
        symbol_counter            <= "0000";
        total_counter             <= (others => '0');
        finish                    <= '0';
      else
        if symbol_counter = num_symbols then
          bram_addr               <= (others => '0');
          finish                  <= '1';
        else
          if total_counter = g_SYMBOL_LENGTH then
            total_counter         <= (others => '0');
            symbol_counter        <= symbol_counter + '1';
            bram_addr             <= bram_addr + '1';
          else
            total_counter         <= total_counter + '1';
            bram_addr             <= bram_addr + '1';
          end if;
        end if;
      end if;
    end if;
  end process P_BRAM_READ;

  BRAM_PORT_addr                  <= bram_addr;
  BRAM_PORT_rst                   <= '0';
  BRAM_PORT_clk                   <= axis_aclk;

  m_axis_tdata                    <= BRAM_PORT_dout;
  m_axis_tlast_1                  <= '0';
  m_axis_tvalid_1                 <= playback_en and not finish;

  P_DELAY_TVALID : process(axis_aclk)
  begin
    if rising_edge(axis_aclk) then
      m_axis_tvalid               <= m_axis_tvalid_1;
      m_axis_tlast                <= m_axis_tlast_1;
    end if;
  end process P_DELAY_TVALID;

  o_finish                        <= finish;
  
end architecture RTL;
