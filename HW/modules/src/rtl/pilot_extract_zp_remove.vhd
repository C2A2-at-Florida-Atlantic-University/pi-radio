-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Separate pilots from Data and delete zero SC's
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity pilot_extract_zp_remove is
  port(
    axis_aclk                     : in  std_logic;
    axis_aresetn                  : in  std_logic;

    s_axis_tdata                  : in  std_logic_vector(127 downto 0);
    s_axis_tvalid                 : in  std_logic;
    --s_axis_tid                    : in  std_logic_vector(7 downto 0);
    --s_axis_tuser                  : in  std_logic_vector(7 downto 0);
    s_axis_tlast                  : in  std_logic;

    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    --m_axis_tid                    : out std_logic_vector(7 downto 0);
    --m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic;

    m_pilot_axis_tdata            : out std_logic_vector(31 downto 0);
    m_pilot_axis_tvalid           : out std_logic;
    --m_pilot_axis_tid              : out std_logic_vector(7 downto 0);
    --m_pilot_axis_tuser            : out std_logic_vector(7 downto 0);
    m_pilot_axis_tlast            : out std_logic;

    o_symbol_number               : out std_logic_vector(7 downto 0);
    o_valid_frame                 : out std_logic
  );
end entity pilot_extract_zp_remove;

architecture RTL of pilot_extract_zp_remove is
  
  -- Create constants with 4x parrallization factor
  constant NFFT                   : integer := 1024/4;
  -- ZP_LOW from 0 to 110
  constant ZP_LOW                 : integer := 112/4;
  -- ZP_HIGH from 912 to 1023
  constant ZP_HIGH                : integer := 912/4 + 1;
  
  constant ZP_MIDDLE              : integer := 512/4;

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of axis_aclk    : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk    : 
    signal is "ASSOCIATED_BUSIF axis_aclk:s_axis:m_axis:m_pilot_axis, FREQ_HZ 249997498";

  signal tvalid_rising            : std_logic;
  signal nfft_counter             : std_logic_vector(7 downto 0);
  signal symbol_counter           : std_logic_vector(7 downto 0);
  signal symbol_timeout_counter   : std_logic_vector(7 downto 0);

  signal r_tdata                  : std_logic_vector(127 downto 0);
  signal r_tvalid                 : std_logic;
  signal r_tlast                  : std_logic;

  signal o_tdata                  : std_logic_vector(127 downto 0);
  signal o_tvalid                 : std_logic;
  signal o_tlast                  : std_logic;
  
  signal out_sr                   : std_logic_vector(255 downto 0);
  signal avail                    : std_logic_vector(7 downto 0);
  signal pilot_valid              : std_logic;
  signal data_valid               : std_logic;

begin

  -- Process to create counters to index between 
  -- data/pilot/zero carriers
  p_CREATE_COUNTERS : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
      symbol_timeout_counter      <= (others => '0');
      nfft_counter                <= (others => '0');
      symbol_counter              <= (others => '0');
      o_valid_frame               <= '0';
    elsif rising_edge(axis_aclk) then
      if s_axis_tvalid = '1' then
        -- Valid OFDM frame
        o_valid_frame             <= '1';
        -- Reset symbol timeout counter 
        symbol_timeout_counter    <= (others => '0');
        -- Create counter that counts from 0 to nfft - 1
        if nfft_counter = NFFT-1 then
          nfft_counter            <= (others => '0');
          -- Increment symbol counter every 1024 nfft counters
          symbol_counter          <= symbol_counter + '1';
        else
          nfft_counter            <= nfft_counter + '1';
        end if;
      else
        -- Create timeout for symbol counter to reset count
        if symbol_timeout_counter = NFFT-1 then
          symbol_counter          <= (others => '0');
          o_valid_frame           <= '0';
        else
          symbol_timeout_counter  <= symbol_timeout_counter + '1';
        end if;
        nfft_counter              <= (others => '0');
      end if;
    end if;
  end process p_CREATE_COUNTERS;

  o_symbol_number                 <= symbol_counter;
  o_tvalid                        <= '1' when avail = std_logic_vector(to_unsigned(4, 8)) else '0';
  o_tdata                         <= out_sr(255 downto 128);
  -- Process to remove zero carriers
  p_REMOVE_ZP_CARRIERS : process(axis_aclk, axis_aresetn)
  begin
    if axis_aresetn = '0' then
       pilot_valid <= '0';
       data_valid <= '0';
      NULL;
    elsif rising_edge(axis_aclk) then
--      if nfft_counter < ZP_LOW then
--        o_tdata                   <= (others => '0');
--        o_tvalid                  <= '0';
--        o_tlast                   <= '0';
--      elsif nfft_counter = ZP_LOW then
--        o_tdata                   <= r_tdata(127 downto 96) & X"000000000000000000000000";
--        o_tvalid                  <= '1';
--        o_tlast                   <= '0';
--      elsif nfft_counter < ZP_HIGH then
--        o_tdata                   <= r_tdata;
--        o_tvalid                  <= '1';
--        o_tlast                   <= '0';
--      elsif nfft_counter = ZP_HIGH then
--        o_tdata                   <= r_tdata;
--        o_tvalid                  <= '1';
--        o_tlast                   <= '1';
--      elsif nfft_counter > ZP_HIGH then
--        o_tdata                   <= (others => '0');
--        o_tvalid                  <= '0';
--        o_tlast                   <= '0';
        if nfft_counter < ZP_LOW then
            avail <= std_logic_vector(to_unsigned(0, 8));
        elsif nfft_counter = ZP_LOW then
            pilot_valid <= '0';
            avail <= std_logic_vector(to_unsigned(0, 8));                        
            out_sr <=r_tdata(127 downto 0) & X"00000000000000000000000000000000";
        elsif nfft_counter = ZP_LOW + 1 then
            pilot_valid <= '1';
            data_valid <= '1';
            avail <= std_logic_vector(to_unsigned(4, 8));                        
            out_sr <= out_sr(255 downto 224) & r_tdata(95 downto 0) & r_tdata(127 downto 96) & X"000000000000000000000000";
        elsif (nfft_counter > ZP_LOW + 1) and (nfft_counter < ZP_MIDDLE) then
            data_valid <= '1';
            pilot_valid <= '1';
            avail <= std_logic_vector(to_unsigned(4, 8));
            out_sr <=  out_sr(127 downto 96) & r_tdata(95 downto 0) & r_tdata(127 downto 96) & X"000000000000000000000000";
        elsif (nfft_counter = ZP_MIDDLE) then
            data_valid <= '1';
            pilot_valid <= '1';
            avail <= std_logic_vector(to_unsigned(4, 8));
            out_sr <= out_sr(127 downto 96) & r_tdata(95 downto 0) & X"00000000000000000000000000000000";
        elsif (nfft_counter = ZP_MIDDLE + 1) then
            data_valid <= '0';
            pilot_valid <= '0';
            avail <= std_logic_vector(to_unsigned(3, 8));
            out_sr <=r_tdata(63 downto 32) & X"00000000" & r_tdata(127 downto 64)& X"00000000000000000000000000000000";
        elsif (nfft_counter = ZP_MIDDLE + 2 ) then
            data_valid <= '1';
            pilot_valid <= '1';
            avail <= std_logic_vector(to_unsigned(4, 8));
            out_sr <= out_sr(255 downto 224) & r_tdata(31 downto 0) & out_sr(191 downto 128) 
                                & r_tdata(63 downto 32) & X"00000000" & r_tdata(127 downto 64);
        elsif(nfft_counter > ZP_MIDDLE + 2 and nfft_counter < ZP_HIGH) then
            data_valid <= '1';
            pilot_valid <= '1';
            avail <= std_logic_vector(to_unsigned(4, 8));
            out_sr <= out_sr(127 downto 96) & r_tdata(31 downto 0) & out_sr(63 downto 0) &
                                 r_tdata(63 downto 32) & X"00000000" & r_tdata(127 downto 64) ;
        elsif (nfft_counter = ZP_HIGH) then
            data_valid <= '1';
            pilot_valid <= '1';
            avail <= std_logic_vector(to_unsigned(4, 8));
            out_sr <= out_sr(127 downto 96) & r_tdata(31 downto 0) & out_sr(63 downto 0) & X"00000000000000000000000000000000";
        else
            data_valid <= '0';
            pilot_valid <= '0';
            avail <= std_logic_vector(to_unsigned(0, 8));
      end if;
    end if;
  end process p_REMOVE_ZP_CARRIERS;

  m_axis_tdata                    <= o_tdata;
  m_axis_tvalid                   <= o_tvalid;
  m_axis_tlast                    <= o_tlast;

  m_pilot_axis_tdata              <= o_tdata(127 downto 96);
  m_pilot_axis_tvalid             <= o_tvalid;
  m_pilot_axis_tlast              <= o_tlast;
        
  p_PIPELINE_S_AXIS : process(axis_aclk, axis_aresetn)
  begin
    if rising_edge(axis_aclk) then
      r_tdata                     <= s_axis_tdata;
      r_tvalid                    <= s_axis_tvalid;
      r_tlast                     <= s_axis_tlast;
    end if;
  end process p_PIPELINE_S_AXIS;

end architecture RTL;
