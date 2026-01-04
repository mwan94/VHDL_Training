----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2026 05:37:40 PM
-- Design Name: 
-- Module Name: test - Behavioral
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

entity BTNS_to_LEDS is 
port(
    i_btn_0 : in STD_LOGIC;
    i_btn_1 : in STD_LOGIC;
    i_btn_2 : in STD_LOGIC;
    i_btn_3 : in STD_LOGIC;
    o_LED_0 : out STD_LOGIC;
    o_LED_1 : out STD_LOGIC;
    o_LED_2 : out STD_LOGIC;
    o_LED_3 : out STD_LOGIC);
 end entity BTNS_to_LEDS;   

architecture RTL of BTNs_to_LEDS is 
begin

    o_LED_0 <= i_btn_0 and i_btn_1 ;
    o_LED_1 <= i_btn_2 or i_btn_3 ;
    o_LED_2 <= not i_btn_3;
    

end RTL;