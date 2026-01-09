----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/08/2026 07:53:58 PM
-- Design Name: 
-- Module Name: and_gate_project - 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_gate_project is
  Port ( 
            switch_1 : in std_logic;
            switch_2 : in std_logic;
            led_1    : out std_logic               
  );
end and_gate_project;


architecture RTL of and_gate_project is
begin

    led_1 <= switch_1 and switch_2;

end RTL;
