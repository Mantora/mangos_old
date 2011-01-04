CREATE TABLE `account_forcepermission` (
  `AccountID` int(11) unsigned NOT NULL default '0',
  `realmID` int(3) unsigned NOT NULL default '0',
  `Security` int(3) unsigned default '0',
  PRIMARY KEY  (`AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;