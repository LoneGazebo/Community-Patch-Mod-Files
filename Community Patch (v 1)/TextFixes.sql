-- Insert SQL Rules Here 

UPDATE Language_en_US
SET Text = 'Ant�nio'
WHERE Tag = 'TXT_KEY_SPY_NAME_BRAZIL_0' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Est�v�o'
WHERE Tag = 'TXT_KEY_SPY_NAME_BRAZIL_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Fern�o'
WHERE Tag = 'TXT_KEY_SPY_NAME_BRAZIL_4' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Tom�'
WHERE Tag = 'TXT_KEY_SPY_NAME_BRAZIL_8' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE' AND Value= 1 );