-- WARNING these are custom features use it carefully!!
-- read description and chouse what you need
-- used with 569 YTDB + 1845 ScriptDev2
-- author Selector


-- #########################################
-- close some instances (not supported in repo)
-- Pit of Saron (not supported)
UPDATE `areatrigger_teleport` SET `required_level`='100' WHERE (`id`='5683');
UPDATE `areatrigger_teleport` SET `required_level`='100' WHERE (`id`='5637');


-- #########################################
-- BG & arena changes 
-- disable SoTa(Strand of the Ancients) & IoC(Isle of Conquest) BGs
DELETE FROM `battleground_template` WHERE (`id`='9');
DELETE FROM `battleground_template` WHERE (`id`='30');
-- chage min players for Alterac
UPDATE `battleground_template` SET `MinPlayersPerTeam`='15' WHERE (`id`='1');
-- chage min players for Warsong
UPDATE `battleground_template` SET `MinPlayersPerTeam`='5' WHERE (`id`='2');
-- chage min players for Arathi
UPDATE `battleground_template` SET `MinPlayersPerTeam`='10' WHERE (`id`='3'); 
-- chage min players for Eye of Storm
UPDATE `battleground_template` SET `MinPlayersPerTeam`='10' WHERE (`id`='7');


-- #########################################
-- open doors to Vault of Archavon
DELETE FROM gameobject WHERE guid = '51165';
DELETE FROM game_event_gameobject WHERE guid = '51165';
DELETE FROM gameobject_battleground WHERE guid = '51165';
DELETE FROM gameobject WHERE guid = '73042';
DELETE FROM game_event_gameobject WHERE guid = '73042';
DELETE FROM gameobject_battleground WHERE guid = '73042';
DELETE FROM gameobject WHERE guid = '49914';
DELETE FROM game_event_gameobject WHERE guid = '49914';
DELETE FROM gameobject_battleground WHERE guid = '49914';
--

-- move Horde/ally npc to different sides near Vault of Archavon
-- Horde
UPDATE creature SET position_x = '5366.803711', position_y = '2787.187988', position_z = '409.265015', orientation = '1.661112' WHERE guid = '116002';
UPDATE creature SET position_x = '5362.441895', position_y = '2787.222412', position_z = '409.227692', orientation = '1.562937' WHERE guid = '121119';
UPDATE creature SET position_x = '5356.366699', position_y = '2787.270020', position_z = '409.234436', orientation = '1.562937' WHERE guid = '86519';
UPDATE creature SET position_x = '5351.321777', position_y = '2787.309570', position_z = '409.234528', orientation = '1.562937' WHERE guid = '88691';
UPDATE creature SET position_x = '5346.116699', position_y = '2787.350586', position_z = '409.197693', orientation = '1.562937' WHERE guid = '86771';
UPDATE creature SET position_x = '5367.033203', position_y = '2794.176758', position_z = '409.283417', orientation = '1.464758' WHERE guid = '89930';
UPDATE creature SET position_x = '5358.395508', position_y = '2793.972656', position_z = '409.239685', orientation = '1.464759' WHERE guid = '89931';
UPDATE creature SET position_x = '5349.074219', position_y = '2793.756592', position_z = '409.240204', orientation = '1.472608' WHERE guid = '89935';
UPDATE creature SET position_x = '5348.568359', position_y = '2778.840088', position_z = '409.172424', orientation = '1.543290' WHERE guid = '89940';
-- Alliance
UPDATE creature SET position_x = '5370.759766', position_y = '2892.460693', position_z = '409.239380', orientation = '4.688800' WHERE guid = '116248';
UPDATE creature SET position_x = '5366.251953', position_y = '2892.340576', position_z = '409.239380', orientation = '4.669168' WHERE guid = '121120';
UPDATE creature SET position_x = '5360.242676', position_y = '2891.757080', position_z = '409.239380', orientation = '4.810539' WHERE guid = '120646';
UPDATE creature SET position_x = '5357.095215', position_y = '2891.447266', position_z = '409.239380', orientation = '4.810539' WHERE guid = '119735';
UPDATE creature SET position_x = '5353.868164', position_y = '2891.129395', position_z = '409.239380', orientation = '4.810539' WHERE guid = '119736';
UPDATE creature SET position_x = '5349.865234', position_y = '2890.735107', position_z = '409.239380', orientation = '4.810539' WHERE guid = '98393';
UPDATE creature SET position_x = '5368.989746', position_y = '2885.547607', position_z = '409.239471', orientation = '4.767334' WHERE guid = '56555';
UPDATE creature SET position_x = '5358.486328', position_y = '2885.573242', position_z = '409.239471', orientation = '4.767334' WHERE guid = '56551';
UPDATE creature SET position_x = '5350.228027', position_y = '2901.961670', position_z = '409.197754', orientation = '4.759478' WHERE guid = '56553';
UPDATE creature SET position_x = '5349.912109', position_y = '2885.746094', position_z = '409.238556', orientation = '4.786967' WHERE guid = '56550';
--

-- Delete Guards near Vault of Archavon
DELETE FROM gameobject WHERE guid = '49914';
DELETE FROM game_event_gameobject WHERE guid = '49914';
DELETE FROM gameobject_battleground WHERE guid = '49914';
DELETE FROM creature WHERE guid = '89934';
DELETE FROM creature_addon WHERE guid = '89934';
DELETE FROM creature_movement WHERE id = '89934';
DELETE FROM game_event_creature WHERE guid = '89934';
DELETE FROM game_event_model_equip WHERE guid = '89934';
DELETE FROM creature_battleground WHERE guid = '89934';
DELETE FROM creature WHERE guid = '56547';
DELETE FROM creature_addon WHERE guid = '56547';
DELETE FROM creature_movement WHERE id = '56547';
DELETE FROM game_event_creature WHERE guid = '56547';
DELETE FROM game_event_model_equip WHERE guid = '56547';
DELETE FROM creature_battleground WHERE guid = '56547';
DELETE FROM creature WHERE guid = '89938';
DELETE FROM creature_addon WHERE guid = '89938';
DELETE FROM creature_movement WHERE id = '89938';
DELETE FROM game_event_creature WHERE guid = '89938';
DELETE FROM game_event_model_equip WHERE guid = '89938';
DELETE FROM creature_battleground WHERE guid = '89938';
DELETE FROM creature WHERE guid = '56548';
DELETE FROM creature_addon WHERE guid = '56548';
DELETE FROM creature_movement WHERE id = '56548';
DELETE FROM game_event_creature WHERE guid = '56548';
DELETE FROM game_event_model_equip WHERE guid = '56548';
DELETE FROM creature_battleground WHERE guid = '56548';
DELETE FROM creature WHERE guid = '89929';
DELETE FROM creature_addon WHERE guid = '89929';
DELETE FROM creature_movement WHERE id = '89929';
DELETE FROM game_event_creature WHERE guid = '89929';
DELETE FROM game_event_model_equip WHERE guid = '89929';
DELETE FROM creature_battleground WHERE guid = '89929';
DELETE FROM creature WHERE guid = '56554';
DELETE FROM creature_addon WHERE guid = '56554';
DELETE FROM creature_movement WHERE id = '56554';
DELETE FROM game_event_creature WHERE guid = '56554';
DELETE FROM game_event_model_equip WHERE guid = '56554';
DELETE FROM creature_battleground WHERE guid = '56554';
DELETE FROM creature WHERE guid = '89933';
DELETE FROM creature_addon WHERE guid = '89933';
DELETE FROM creature_movement WHERE id = '89933';
DELETE FROM game_event_creature WHERE guid = '89933';
DELETE FROM game_event_model_equip WHERE guid = '89933';
DELETE FROM creature_battleground WHERE guid = '89933';
DELETE FROM creature WHERE guid = '56552';
DELETE FROM creature_addon WHERE guid = '56552';
DELETE FROM creature_movement WHERE id = '56552';
DELETE FROM game_event_creature WHERE guid = '56552';
DELETE FROM game_event_model_equip WHERE guid = '56552';
DELETE FROM creature_battleground WHERE guid = '56552';
DELETE FROM creature WHERE guid = '89942';
DELETE FROM creature_addon WHERE guid = '89942';
DELETE FROM creature_movement WHERE id = '89942';
DELETE FROM game_event_creature WHERE guid = '89942';
DELETE FROM game_event_model_equip WHERE guid = '89942';
DELETE FROM creature_battleground WHERE guid = '89942';
DELETE FROM creature WHERE guid = '52497';
DELETE FROM creature_addon WHERE guid = '52497';
DELETE FROM creature_movement WHERE id = '52497';
DELETE FROM game_event_creature WHERE guid = '52497';
DELETE FROM game_event_model_equip WHERE guid = '52497';
DELETE FROM creature_battleground WHERE guid = '52497';
DELETE FROM creature WHERE guid = '89941';
DELETE FROM creature_addon WHERE guid = '89941';
DELETE FROM creature_movement WHERE id = '89941';
DELETE FROM game_event_creature WHERE guid = '89941';
DELETE FROM game_event_model_equip WHERE guid = '89941';
DELETE FROM creature_battleground WHERE guid = '89941';
DELETE FROM creature WHERE guid = '51557';
DELETE FROM creature_addon WHERE guid = '51557';
DELETE FROM creature_movement WHERE id = '51557';
DELETE FROM game_event_creature WHERE guid = '51557';
DELETE FROM game_event_model_equip WHERE guid = '51557';
DELETE FROM creature_battleground WHERE guid = '51557';
DELETE FROM creature WHERE guid = '51450';
DELETE FROM creature_addon WHERE guid = '51450';
DELETE FROM creature_movement WHERE id = '51450';
DELETE FROM game_event_creature WHERE guid = '51450';
DELETE FROM game_event_model_equip WHERE guid = '51450';
DELETE FROM creature_battleground WHERE guid = '51450';
DELETE FROM creature WHERE guid = '51157';
DELETE FROM creature_addon WHERE guid = '51157';
DELETE FROM creature_movement WHERE id = '51157';
DELETE FROM game_event_creature WHERE guid = '51157';
DELETE FROM game_event_model_equip WHERE guid = '51157';
DELETE FROM creature_battleground WHERE guid = '51157';
DELETE FROM creature WHERE guid = '89936';
DELETE FROM creature_addon WHERE guid = '89936';
DELETE FROM creature_movement WHERE id = '89936';
DELETE FROM game_event_creature WHERE guid = '89936';
DELETE FROM game_event_model_equip WHERE guid = '89936';
DELETE FROM creature_battleground WHERE guid = '89936';
DELETE FROM creature WHERE guid = '51027';
DELETE FROM creature_addon WHERE guid = '51027';
DELETE FROM creature_movement WHERE id = '51027';
DELETE FROM game_event_creature WHERE guid = '51027';
DELETE FROM game_event_model_equip WHERE guid = '51027';
DELETE FROM creature_battleground WHERE guid = '51027';
DELETE FROM creature WHERE guid = '89939';
DELETE FROM creature_addon WHERE guid = '89939';
DELETE FROM creature_movement WHERE id = '89939';
DELETE FROM game_event_creature WHERE guid = '89939';
DELETE FROM game_event_model_equip WHERE guid = '89939';
DELETE FROM creature_battleground WHERE guid = '89939';
DELETE FROM creature WHERE guid = '51015';
DELETE FROM creature_addon WHERE guid = '51015';
DELETE FROM creature_movement WHERE id = '51015';
DELETE FROM game_event_creature WHERE guid = '51015';
DELETE FROM game_event_model_equip WHERE guid = '51015';
DELETE FROM creature_battleground WHERE guid = '51015';



-- #########################################
-- delete chests from ICC(ship battle)
-- Ally
DELETE FROM `gameobject` WHERE `id`=201875;
DELETE FROM `gameobject` WHERE `id`=201874;
DELETE FROM `gameobject` WHERE `id`=201873;
DELETE FROM `gameobject` WHERE `id`=201872;
-- Horde
DELETE FROM `gameobject` WHERE `id`=202180;
DELETE FROM `gameobject` WHERE `id`=202179;
DELETE FROM `gameobject` WHERE `id`=202178;
DELETE FROM `gameobject` WHERE `id`=202177;


-- #########################################
-- prevent exploits with PVP daily quests(free honor)
-- set 100lvl for taking :D
-- No Mercy! http://www.wowhead.com/quest=13233
DELETE FROM `creature_questrelation` WHERE `quest` = 13233;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13233;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13233;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30344, 13233);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30344;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13233;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13233;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30344, 13233);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30344;
UPDATE `quest_template` SET `MinLevel` = 100, `QuestLevel` = 100 WHERE `entry` = 13233;
-- Make Them Pay! http://www.wowhead.com/quest=13234
DELETE FROM `creature_questrelation` WHERE `quest` = 13234;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 13234;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 13234;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (30824, 13234);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 30824;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 13234;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 13234;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (30824, 13234);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=30824;
UPDATE `quest_template` SET `MinLevel` = 100, `QuestLevel` = 100 WHERE `entry` = 13234;

-- #########################################
-- make some non completable quests auto-complete(chaing-like and importend)
-- hope soon there will be support for them in Core/SD
-- Cold Hearted http://www.wowhead.com/quest=12856
DELETE FROM `creature_questrelation` WHERE `quest` = 12856;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12856;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12856;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29592, 12856);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29592;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12856;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12856;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29592, 12856);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29592;
UPDATE `quest_template` SET `Method` = 0 WHERE `entry` = 12856;
-- make The Valiant's Challenge autocomplete http://www.wowhead.com/search?q=The+Valiant%27s+Challenge
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13699;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13713;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13723;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13724;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13725;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13726;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13727;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13728;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13729;
UPDATE `quest_template` SET `Method` = 0, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 13731;

--
-- Death Knight quests
--
-- hack for quest http://www.wowhead.com/quest=12698 (The Gift That Keeps On Giving)
DELETE FROM `creature_questrelation` WHERE `quest` = 12698;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12698;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12698;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (28658, 12698);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 28658;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12698;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12698;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (28658, 12698);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=28658;
UPDATE `quest_template` SET `Method` = 0 WHERE `entry` = 12698;
-- hack for quest http://ru.wowhead.com/quest=12779 (An End To All Things...)
DELETE FROM `creature_questrelation` WHERE `quest` = 12779;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12779;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12779;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (29110, 12779);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 29110;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12779;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12779;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (29110, 12779);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=29110;
UPDATE `quest_template` SET `Method` = 0 WHERE `entry` = 12779;
-- hack for quest http://ru.wowhead.com/quest=12801 (The Light of Dawn)
DELETE FROM `creature_questrelation` WHERE `quest` = 12801;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 12801;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 12801;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (31082, 12801);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 31082;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 12801;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 12801;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (31082, 12801);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=31082;
UPDATE `quest_template` SET `Method` = 0 WHERE `entry` = 12801;
