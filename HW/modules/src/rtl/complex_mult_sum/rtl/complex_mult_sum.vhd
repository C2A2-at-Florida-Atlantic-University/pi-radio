-----------------------------------------------------------------
-- Jared Hermans
--
-- Description: Perform complex mult sum of AXIS streams
--              Parallelization factor of 4
-----------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.math_real.all;

entity complex_mult_sum is
  port(
    s_axis_aclk                   : in  std_logic;
    s_axis_aresetn                : in  std_logic;

    s_axis0_tdata                 : in  std_logic_vector(127 downto 0);
    s_axis0_tvalid                : in  std_logic;
    s_axis0_tid                   : in  std_logic_vector(7 downto 0);
    s_axis0_tuser                 : in  std_logic_vector(7 downto 0);
    s_axis0_tlast                 : in  std_logic;

    s_axis1_tdata                 : in  std_logic_vector(127 downto 0);
    s_axis1_tvalid                : in  std_logic;
    s_axis1_tid                   : in  std_logic_vector(7 downto 0);
    s_axis1_tuser                 : in  std_logic_vector(7 downto 0);
    s_axis1_tlast                 : in  std_logic;
    
    m_axis_tdata                  : out std_logic_vector(127 downto 0);
    m_axis_tvalid                 : out std_logic;
    m_axis_tid                    : out std_logic_vector(7 downto 0);
    m_axis_tuser                  : out std_logic_vector(7 downto 0);
    m_axis_tlast                  : out std_logic
  );
end entity complex_mult_sum;

architecture RTL of complex_mult_sum is

  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  
  attribute X_INTERFACE_INFO      of s_axis_aclk    : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s_axis_aclk    : 
    signal is "ASSOCIATED_BUSIF s_axis_aclk:s_axis0:s_axis1:m_axis, FREQ_HZ 250000000";

  component cmpy_0 is
    port(
      aclk                        : in  std_logic;
      aresetn                     : in  std_logic;

      s_axis_a_tvalid             : in  std_logic;
      s_axis_a_tready             : out std_logic;
      s_axis_a_tdata              : in  std_logic_vector(31 downto 0);

      s_axis_b_tvalid             : in  std_logic;
      s_axis_b_tready             : out std_logic;
      s_axis_b_tdata              : in  std_logic_vector(31 downto 0);

      m_axis_dout_tvalid          : out std_logic;
      m_axis_dout_tready          : in  std_logic;
      m_axis_dout_tdata           : out std_logic_vector(31 downto 0)
    );
  end component cmpy_0;

begin



end architecture RTL;
