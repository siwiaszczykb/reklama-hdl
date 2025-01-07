LIBRARY ieee;
USE ieee.std_logic_1164.all; 

ENTITY reklama IS 
	PORT
	(
		clk_in :  IN  STD_LOGIC;
		seg1 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		seg2 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		seg3 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		seg4 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		seg5 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0);
		seg6 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END reklama;

ARCHITECTURE wyswietlanie OF reklama IS 

COMPONENT licznik
	PORT(clk : IN STD_LOGIC;
		 Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT preskaler
	PORT(clk : IN STD_LOGIC;
		 clk1Hz : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT msg
	PORT(A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;

COMPONENT znakseg7
	PORT(A : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 SEG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rejestr
	PORT(clk : IN STD_LOGIC;
		 EN : IN STD_LOGIC;
		 D : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
		 Q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	main_clk :  STD_LOGIC;
SIGNAL	seg_1 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	seg_2 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	seg_3 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	seg_4 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	seg_5 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	seg_6 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	licznikDoWiadomosci :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	wiadomoscDoKodera :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	koderDoRejestru :  STD_LOGIC_VECTOR(6 DOWNTO 0);

BEGIN 
b2v_inst : licznik
PORT MAP(clk => main_clk,
		 Q => licznikDoWiadomosci);

b2v_inst1 : preskaler
PORT MAP(clk => clk_in,
		 clk1Hz => main_clk);
		 seg1 <= NOT(seg_1);
		 seg2 <= NOT(seg_2);
		 seg3 <= NOT(seg_3);
		 seg4 <= NOT(seg_4);
		 seg5 <= NOT(seg_5);
		 seg6 <= NOT(seg_6);

msg1 : msg
PORT MAP(A => licznikDoWiadomosci,
		 Q => wiadomoscDoKodera);

seg7znak: znakseg7
PORT MAP(A => wiadomoscDoKodera,
		 SEG => koderDoRejestru);

rejestrseg1 : rejestr
PORT MAP(clk => clk_in,
		 EN => main_clk,
		 D => koderDoRejestru,
		 Q => seg_1);

rejestrseg_2 : rejestr
PORT MAP(clk => clk_in,
		 EN => main_clk,
		 D => seg_1,
		 Q => seg_2);

rejestrseg_3 : rejestr
PORT MAP(clk => clk_in,
		 EN => main_clk,
		 D => seg_2,
		 Q => seg_3);

rejestrseg_4 : rejestr
PORT MAP(clk => clk_in,
		 EN => main_clk,
		 D => seg_3,
		 Q => seg_4);

rejestrseg_5 : rejestr
PORT MAP(clk => clk_in,
		 EN => main_clk,
		 D => seg_4,
		 Q => seg_5);

rejestrseg_6 : rejestr
PORT MAP(clk => clk_in,
		 EN => main_clk,
		 D => seg_5,
		 Q => seg_6);

END wyswietlanie;