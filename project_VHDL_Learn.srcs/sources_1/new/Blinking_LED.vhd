----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/05/2026 01:10:06 PM
-- Design Name: 
-- Module Name: Blinking_LED - Behavioral
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

entity Blinking_LED is
    Port ( 
        i_clk       :   in std_logic ;
        i_switch_1  :   in std_logic ;
        o_LED_1     :   out std_logic   
    );
end Blinking_LED;

architecture RTL of Blinking_LED is

    signal r_LED_1      :   std_logic  := '0';
    signal r_switch_1   :   std_logic  := '0';
    
begin
    process (i_clk) is
    begin
        if rising_edge(i_clk) then
            r_switch_1 <= i_switch_1;
            
            if i_switch_1 = '0' and r_switch_1 = '1' then
                r_LED_1 <= not r_LED_1;
            end if;
         end if;
     end process;           

    o_LED_1 <= r_LED_1;
    
end architecture RTL;
