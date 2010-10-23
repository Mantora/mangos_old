-- English

DELETE FROM `command` WHERE (`name`='nameannounce');
INSERT INTO `command` VALUES ('nameannounce',2,'Syntax: .nameannounce $MessageToBroadcast\r\n\r\nSend a global message to all players online in chat log with colored sender\'s name.');

DELETE FROM `mangos_string` WHERE `entry` IN (1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312); 
INSERT INTO `mangos_string` VALUES 
(1301,'|c1f40af20 <Moderator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1302,'|c1f40af20 <SuperModerator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1303,'|c1f40af20 <ModeratorChief>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1304,'|c1f40af20 <GameOperator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1305,'|c1f40af20 <SuperGameOperator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1306,'|c1f40af20 <GameMaster>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1307,'|c1f40af20 <SuperGameMaster>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1308,'|c1f40af20 <QualityAssurance>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1309,'|c1f40af20 <Developer>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1310,'|c1f40af20 <GameChief>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1311,'|c1f40af20 <SubAdministrator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1312,'|c1f40af20 <Administrator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Russian
/*
DELETE FROM `command` WHERE (`name`='nameannounce');
INSERT INTO `command` VALUES ('nameannounce',2,'Syntax: .nameannounce $MessageToBroadcast\r\n\r\nSend a global message to all players online in chat log with colored sender\'s name.');

DELETE FROM `mangos_string` WHERE `entry` IN (1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311, 1312);
INSERT INTO `mangos_string` VALUES 
(1301,'|c1f40af20 <V.I.P. not-used!!!>|cff00ffff[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1302,'|c1f40af20 <Модер.>|cff00ffff[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1303,'|c1f40af20 <Техник>|cffd101fe[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1304,'|c1f40af20 <Ассистент>|cff0000ff[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1305,'|c1f40af20 <GameOperator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1306,'|c1f40af20 <SuperGameOperator>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1307,'|c1f40af20 <GameMaster>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1308,'|c1f40af20 <SuperGameMaster>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1309,'|c1f40af20 <QualityAssurance>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(1310,'|c1f40af20 <Developer>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1311,'|c1f40af20 <GameChief>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL), 
(1312,'|c1f40af20 <Админ>|cffff0000[%s]|c1f40af20 announce:|cffffff00 %s|r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
*/