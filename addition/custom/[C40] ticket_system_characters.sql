-- new ticket system

ALTER TABLE `character_ticket` ADD COLUMN `closed` smallint(1) unsigned DEFAULT '0' NOT NULL AFTER `ticket_lastchange`;
ALTER TABLE `character_ticket` ADD COLUMN `assigned_guid` INT(11) UNSIGNED DEFAULT '0' NOT NULL AFTER `closed`;
ALTER TABLE `character_ticket` ADD COLUMN `assigned_sec_level` TINYINT(3) DEFAULT '0' NOT NULL AFTER `assigned_guid`;