-- Easy Money Quest Fix and Teleport added
DELETE FROM `smart_scripts` WHERE `entryorguid`=44833 AND `source_type`=0 AND `id`=0 AND `link`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (44833, 0, 0, 0, 62, 0, 100, 0, 71500, 0, 0, 0, '', 62, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, -10995.5, -1263.06, 13.2424, 1.47323, 'Easy Money Quest Teleport');
DELETE FROM `quest_objectives` WHERE `ID`=266508;
INSERT INTO `quest_objectives` (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Flags`, `Flags2`, `ProgressBarWeight`, `Description`, `VerifiedBuild`) VALUES (266508, 27003, 3, 0, 0, 44833, 1, 0, 0, 0, 'Caravan Escorted', 25996);
DELETE FROM `gossip_menu_option` WHERE `MenuId`=71500 AND `OptionIndex`=0;
INSERT INTO `gossip_menu_option` (`MenuId`, `OptionIndex`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `VerifiedBuild`) VALUES (71500, 0, 0, 'I\'m ready to go to Uldum.', 0, 1, 1, 0);
UPDATE `creature_template` SET `npcflag`= 3, `AIName`='SmartAI', `IconName`='questinteract', `gossip_menu_id`= 71500 WHERE `entry`= 44833;
