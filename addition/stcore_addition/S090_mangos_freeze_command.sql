DELETE FROM `command` WHERE `name` = 'freeze' or `name` = 'unfreeze' or name = 'listfreeze';
INSERT INTO `command` (`name`,`security`,`help`) VALUES 
('freeze','3','Syntax: .freeze (#player)\r\n\"Freezes\" #player. When using this without #name it will freeze your target.'),
('unfreeze','3','Syntax: .unfreeze (#player)\r\n\"Unfreezes\" #player. When using this without #name it will unfrezze your target.'),
('listfreeze','3','Syntax: .listfreeze\r\n\r\nSearch and output all frozen players.');

-- //TODO: normal translation :) 
DELETE FROM mangos_string WHERE entry BETWEEN 10900 AND 10906;
INSERT INTO mangos_string VALUES
(10900,'You froze player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вы заблокировали передвижение и действия игрока %s'),
(10901,'Can not freeze self',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Нельзя заблокировать самого себя себя'),
(10902,'Invalid, input #name or target.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Неправильное условие, выберите игрока либо напишите его ник'),
(10903,'You unfroze the player %s.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Вы освободили игрока %s'),
(10904,'No frozen players found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Заблокированных игроков не найдено'),
(10905,'The following players are still freezing:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Передвижение и выполнение действий заблокировано у следующих игроков:'),
(10906,'- %s',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);