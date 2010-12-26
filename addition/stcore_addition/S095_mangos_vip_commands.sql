-- Custom feature, read syntax for explonation. 
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip debuff',1,'Syntax: .vip debuff - removes Resurrection Sickness and Deserter debuffs from owner');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip map', 1, 'Syntax: .vip map - reveals all maps to owner');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip bank', 1, 'Syntax: .vip bank - Show your bank inventory.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip repair', 1, 'Syntax: .vip repair - repair all your items.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip auction', 1, 'Syntax: .vip auction - opens auctionhouse window to character.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip resettalents', 1, 'Syntax: .vip resettalents - reset talents to your character.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip whispers', 1, 'Syntax: .vip whispers - Enable/disable accepting whispers by VIP accounts from players.');
REPLACE INTO `command` (`name`,`security`,`help`) VALUES ('vip taxi', 1, 'Syntax: .vip taxi - reveals all taxipaths to owner');

INSERT INTO `mangos_string` VALUES (12000, 'You can\'t use command while being dead/stealthed or being in arena/bg orbeing in combat.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы не можете использовать комманду находясь на арене/БГ, в комбате/стелсе или будучи мертвым.');
INSERT INTO `mangos_string` VALUES (12001, 'You can\'t use command while being dead/stealthed or being in arena/bg orbeing in combat.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Вы не можете использовать комманду находясь на арене/БГ/подземелье, в комбате/стелсе или будучи мертвым.')
