library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
entity parteAbis is 
end parteAbis;
ARCHITECTURE behavior OF parteAbis is 
COMPONENT parteAbis 
PORT (
		SW1 : in STD_LOGIC;
		SW2 : in STD_LOGIC;
		LED : out STd_LOGIC
		);
END COMPONENT;

signal SW1 : std_logic := '0';
signal SW2 : std_logic := '0';

signal LED : std_logic ;
BEGIN 
 
 uut: parteAbis PORT MAP (
 SW1 => SW1,
 SW2 => SW2,
 LED => LED
 );
 stim_proc: process
 begin
 SW1 <= '0' ; SW2 <= '0'; wait for 10ns;
 SW1 <= '0' ; SW2 <= '1'; wait for 10ns;
 SW1 <= '1' ; SW2 <= '0'; wait for 10ns;
 SW1 <= '1' ; SW2 <= '1'; wait for 10ns;
 wait;
 
 end process;
 END;