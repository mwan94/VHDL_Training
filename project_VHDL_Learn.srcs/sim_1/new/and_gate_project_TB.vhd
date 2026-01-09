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
-- No inputs or outputs declared under the entity section (we usually do that in the design source, not in testbench)
-- Testbench doesn't connect to external signals
-- Testbench itself provides the inputs and monitor the output





architecture Behavioral of and_gate_project_TB is

    signal in1, in2, out1 : std_logic; --signals created for simulation, will be connected to the I/Os of the UUT
                                        -- Stimuli provided to UUT

begin


UUT : entity work.and_gate_project  --Instantiating the entity and_gate_project UUT we created. 
    port map (
    
        switch_1 => in1, --input 1 will be connected to switch_1
        switch_2 => in2, --input 2 will be connected to switch_2
        led_1 => out1    --output will be connected to led_1
    );

process is
    begin
        
        -- in1 and in2 --> out
        -- in1    in2     out
        --  0      0       0   
        --  0      1       0    
        --  1      0       0    
        --  1      1       1    
        
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
