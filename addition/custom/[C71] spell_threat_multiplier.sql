
DROP TABLE IF EXISTS `spell_threat_multiplicator`;

ALTER TABLE `spell_threat`
	ADD COLUMN `Multiplier` FLOAT NOT NULL DEFAULT 1.0 AFTER `Threat`;

ALTER TABLE `spell_threat`
	ADD COLUMN `AP_Multiplier` FLOAT NOT NULL DEFAULT 0.0 AFTER `Multiplier`;