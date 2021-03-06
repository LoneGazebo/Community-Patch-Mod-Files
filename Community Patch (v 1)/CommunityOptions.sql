--DO NOT MODIFY THIS--
CREATE TABLE IF NOT EXISTS COMMUNITY (
Type text,
Value variant default 0
);
--DO NOT MODIFY ABOVE--

/*
_______________Community Patch for Brave New World ________________

Thank you for downloading the Community Patch!

_______________OPTIONS FOR Community Patch____________________

All options below are preset to the default values of this mod.

-- OPTIONS --
-- If you have not read the instructions above, please do so now!

/*
Core Balance Tweaks - Changes from files in CoreBalance folder
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE', 1);


/*
Happiness Balance Tweaks - Allows for variable bonuses/penalties from happiness/unhappiness
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_HAPPINESS', 0);

/*
Changes to Settler Behavior
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_SETTLER_TWEAKS', 1);

/*
Changes to Military Behavior and Flavors
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_MILITARY_TWEAKS', 1);

/*
Changes to Policy Flavors
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_POLICY_TWEAKS', 1);

/*
Changes to City Strategy Flavors
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_CITYSTRATEGY_TWEAKS', 1);

/*
Changes to Civilization Traits
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_CIVS', 0);

/*
Changes to Promotions
1 = Enabled (Default)
0 = Disabled 
*/

INSERT INTO COMMUNITY (Type, Value)
VALUES ('COMMUNITY_CORE_BALANCE_PROMOTIONS', 1);


