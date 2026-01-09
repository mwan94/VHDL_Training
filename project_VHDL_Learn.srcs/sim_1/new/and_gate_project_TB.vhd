----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/08/2026 08:04:53 PM
-- Design Name: 
-- Module Name: and_gate_project_TB - Behavioral
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
use std.env.finish;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and_gate_project_TB is
--  Port ( );
end and_gate_project_TB;

architecture Behavioral of and_gate_project_TB is

    signal in1, in2, out1 : std_logic;

begin


UUT : entity work.and_gate_project
    port map (
    
        switch_1 => in1,
        switch_2 => in2,
        led_1 => out1
    );

process is
    begin
    
        in1 <= '0';
        in2 <= '0';
        wait for 10 ns;
        
        in1 <= '0';
        in2 <= '1';
        wait for 10 ns;        
        
        in1 <= '1';
        in2 <= '0';
        wait for 10 ns;        
        
        in1 <= '1';
        in2 <= '1';
        wait for 10 ns;        
        wait for 10 ns;
        
    finish;
    end process;

end Behavioral;
