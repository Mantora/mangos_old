/* Impact */
DELETE FROM spell_proc_event WHERE entry IN (11103, 12357, 12358, 64343);
INSERT INTO spell_proc_event VALUES
(11103, 0x00000000, 3, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0, 0),
(64343, 0x00000000, 3, 0x00000002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.0, 0.0, 0);