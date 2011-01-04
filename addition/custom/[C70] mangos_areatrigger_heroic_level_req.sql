-- Added level requirement check for heroic instances

ALTER TABLE `areatrigger_teleport` 
	ADD `heroic_level` TINYINT( 3 ) UNSIGNED NOT NULL DEFAULT '0' AFTER `required_item2`;
	
-- Content for Northrend instances
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 4745; -- Utgarde Keep
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 4983; -- The Nexus
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 4998; -- Drak'Tharon Keep
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5010; -- Halls of Stone
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5093; -- Halls of Lightning
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5117; -- Azjol
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5205; -- Gundrak - South
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5206; -- Gundrak - North
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5209; -- Violet Hold
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5215; -- Ahn'kahet 
UPDATE `areatrigger_teleport` SET `heroic_level` = '80' WHERE `id` = 5246; -- The Oculus

