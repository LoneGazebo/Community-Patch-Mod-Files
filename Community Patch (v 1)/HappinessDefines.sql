
-- Base value; -1 Disables -->
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_EMPIRE_MOD', '1'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Division line for when happiness bonuses begin. Happiness above threshold grants bonus.  --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_THRESHOLD', '10'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Division line for main happiness, including when penalties begin. This changes the global value. Acts oddly at anything above zero, so leave at zero. --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_THRESHOLD_MAIN', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Maximum happiness bonus % mod. --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_BONUS_MAXIMUM', '20'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Minimum happiness bonus % mod. --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_BONUS_MINIMUM', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Maximum happiness penalty % mod. --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_PENALTY_MAXIMUM', '-40'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Minimum happiness penalty % mod. --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_PENALTY_MINIMUM', '0'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Science % point per happiness mod (should always be a positive value). --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_SCIENCE_MODIFIER', '2'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );
 
--Gold % point per happiness mod (should always be a positive value). --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_GOLD_MODIFIER', '2'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- production % point per happiness mod (should always be a positive value). --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_PRODUCTION_MODIFIER', '2'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- food % point per happiness mod (should always be a positive value). --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_FOOD_MODIFIER', '2'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- faith % point per happiness mod (should always be a positive value). --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_FAITH_MODIFIER', '1'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- culture % point per happiness mod (should always be a positive value). --
	INSERT INTO Defines (
	Name, Value)
	SELECT 'BALANCE_HAPPINESS_CULTURE_MODIFIER', '1'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Text for city view tooltip. --
	INSERT INTO Language_en_US (
	Text, Tag)
	SELECT '[NEWLINE][ICON_BULLET]Modified due to Happiness: {1_Num}%', 'TXT_KEY_PRODMOD_BALANCE_HAPPINESS_MOD'
	WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );

-- Update text for top panel depending on which yields you have enabled above. --
	UPDATE Language_en_US
	SET Text = 'Cities will produce far less while the empire is [ICON_HAPPINESS_3] unhappy! [NEWLINE]City yield outputs are reduced by 2% for each point of Unhappiness below the normal threshold. The same penalty applies to Units in combat!'
	WHERE Tag = 'TXT_KEY_TP_EMPIRE_UNHAPPY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_HAPPINESS' AND Value= 1 );
