/*
Navicat MariaDB Data Transfer

Source Server         : localhost_3310
Source Server Version : 100130
Source Host           : localhost:3310
Source Database       : characters

Target Server Type    : MariaDB
Target Server Version : 100130
File Encoding         : 65001

Date: 2018-11-14 06:23:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account_data
-- ----------------------------
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_data
-- ----------------------------

-- ----------------------------
-- Table structure for account_instance_times
-- ----------------------------
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_instance_times
-- ----------------------------

-- ----------------------------
-- Table structure for account_tutorial
-- ----------------------------
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_tutorial
-- ----------------------------

-- ----------------------------
-- Table structure for arena_team
-- ----------------------------
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team
-- ----------------------------

-- ----------------------------
-- Table structure for arena_team_member
-- ----------------------------
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of arena_team_member
-- ----------------------------

-- ----------------------------
-- Table structure for auctionhouse
-- ----------------------------
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemowner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deposit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auctionhouse
-- ----------------------------

-- ----------------------------
-- Table structure for blackmarket_auctions
-- ----------------------------
DROP TABLE IF EXISTS `blackmarket_auctions`;
CREATE TABLE `blackmarket_auctions` (
  `marketId` int(10) NOT NULL DEFAULT '0',
  `currentBid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `numBids` int(10) NOT NULL DEFAULT '0',
  `bidder` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`marketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blackmarket_auctions
-- ----------------------------

-- ----------------------------
-- Table structure for bugreport
-- ----------------------------
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- ----------------------------
-- Records of bugreport
-- ----------------------------

-- ----------------------------
-- Table structure for calendar_events
-- ----------------------------
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
  `EventID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Owner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `EventType` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `TextureID` int(10) NOT NULL DEFAULT '-1',
  `Date` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `LockDate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar_events
-- ----------------------------

-- ----------------------------
-- Table structure for calendar_invites
-- ----------------------------
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE `calendar_invites` (
  `InviteID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `EventID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Invitee` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Sender` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ResponseTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ModerationRank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of calendar_invites
-- ----------------------------

-- ----------------------------
-- Table structure for channels
-- ----------------------------
DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- ----------------------------
-- Records of channels
-- ----------------------------

-- ----------------------------
-- Table structure for characters
-- ----------------------------
DROP TABLE IF EXISTS `characters`;
CREATE TABLE `characters` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `face` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hairStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hairColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `facialStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inventorySlots` tinyint(3) unsigned NOT NULL DEFAULT '16',
  `bankSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `restState` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlagsEx` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeonDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `primarySpecialization` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `power6` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `activeTalentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lootSpecId` int(10) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xpRate` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `honor` int(10) unsigned NOT NULL DEFAULT '0',
  `honorLevel` int(10) unsigned NOT NULL DEFAULT '1',
  `prestigeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `honorRestState` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `honorRestBonus` float NOT NULL DEFAULT '0',
  `lastLoginBuild` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of characters
-- ----------------------------

-- ----------------------------
-- Table structure for character_account_data
-- ----------------------------
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE `character_account_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_account_data
-- ----------------------------

-- ----------------------------
-- Table structure for character_achievement
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE `character_achievement` (
  `guid` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for character_achievement_progress
-- ----------------------------
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE `character_achievement_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_achievement_progress
-- ----------------------------

-- ----------------------------
-- Table structure for character_action
-- ----------------------------
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_action
-- ----------------------------

-- ----------------------------
-- Table structure for character_archaeology_branchs
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology_branchs`;
CREATE TABLE `character_archaeology_branchs` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `projectId` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_archaeology_branchs
-- ----------------------------

-- ----------------------------
-- Table structure for character_archaeology_digsites
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology_digsites`;
CREATE TABLE `character_archaeology_digsites` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `digsiteId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`digsiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_archaeology_digsites
-- ----------------------------

-- ----------------------------
-- Table structure for character_archaeology_history
-- ----------------------------
DROP TABLE IF EXISTS `character_archaeology_history`;
CREATE TABLE `character_archaeology_history` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` smallint(5) unsigned NOT NULL DEFAULT '0',
  `projectId` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_archaeology_history
-- ----------------------------

-- ----------------------------
-- Table structure for character_arena_data
-- ----------------------------
DROP TABLE IF EXISTS `character_arena_data`;
CREATE TABLE `character_arena_data` (
  `guid` bigint(20) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfWeek` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` int(10) unsigned NOT NULL DEFAULT '0',
  `weekWins` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekGames` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekWins` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonWins` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_arena_data
-- ----------------------------

-- ----------------------------
-- Table structure for character_aura
-- ----------------------------
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE `character_aura` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `castItemLevel` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_aura
-- ----------------------------

-- ----------------------------
-- Table structure for character_aura_effect
-- ----------------------------
DROP TABLE IF EXISTS `character_aura_effect`;
CREATE TABLE `character_aura_effect` (
  `guid` bigint(20) unsigned NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_aura_effect
-- ----------------------------

-- ----------------------------
-- Table structure for character_banned
-- ----------------------------
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE `character_banned` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- ----------------------------
-- Records of character_banned
-- ----------------------------

-- ----------------------------
-- Table structure for character_battleground_data
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE `character_battleground_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_battleground_data
-- ----------------------------

-- ----------------------------
-- Table structure for character_battleground_random
-- ----------------------------
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_battleground_random
-- ----------------------------

-- ----------------------------
-- Table structure for character_cuf_profiles
-- ----------------------------
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE `character_cuf_profiles` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame top alignment',
  `bottomPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame left alignment',
  `topOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from top',
  `bottomOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_cuf_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for character_currency
-- ----------------------------
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE `character_currency` (
  `CharacterGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Currency` smallint(5) unsigned NOT NULL,
  `Quantity` int(10) unsigned NOT NULL,
  `WeeklyQuantity` int(10) unsigned NOT NULL,
  `TrackedQuantity` int(10) unsigned NOT NULL,
  `Flags` tinyint(3) unsigned NOT NULL,
  `WeekCap` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`Currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_currency
-- ----------------------------

-- ----------------------------
-- Table structure for character_declinedname
-- ----------------------------
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE `character_declinedname` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for character_equipmentsets
-- ----------------------------
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE `character_equipmentsets` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `AssignedSpecIndex` int(11) NOT NULL DEFAULT '-1',
  `item0` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item15` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item16` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item17` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item18` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_equipmentsets
-- ----------------------------

-- ----------------------------
-- Table structure for character_fishingsteps
-- ----------------------------
DROP TABLE IF EXISTS `character_fishingsteps`;
CREATE TABLE `character_fishingsteps` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_fishingsteps
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison`;
CREATE TABLE `character_garrison` (
  `guid` bigint(20) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `siteLevelId` int(10) unsigned NOT NULL DEFAULT '0',
  `followerActivationsRemainingToday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison_blueprints
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_blueprints`;
CREATE TABLE `character_garrison_blueprints` (
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `buildingId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`buildingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison_blueprints
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison_buildings
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_buildings`;
CREATE TABLE `character_garrison_buildings` (
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `plotInstanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `buildingId` int(10) unsigned NOT NULL DEFAULT '0',
  `timeBuilt` bigint(20) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`plotInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison_buildings
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison_followers
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_followers`;
CREATE TABLE `character_garrison_followers` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `followerId` int(10) unsigned NOT NULL,
  `quality` int(10) unsigned NOT NULL DEFAULT '2',
  `level` int(10) unsigned NOT NULL DEFAULT '90',
  `itemLevelWeapon` int(10) unsigned NOT NULL DEFAULT '600',
  `itemLevelArmor` int(10) unsigned NOT NULL DEFAULT '600',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `currentBuilding` int(10) unsigned NOT NULL DEFAULT '0',
  `currentMission` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`),
  UNIQUE KEY `idx_guid_id` (`guid`,`followerId`),
  CONSTRAINT `fk_foll_owner` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison_followers
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison_follower_abilities
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_follower_abilities`;
CREATE TABLE `character_garrison_follower_abilities` (
  `dbId` bigint(20) unsigned NOT NULL,
  `abilityId` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`,`abilityId`,`slot`),
  CONSTRAINT `fk_foll_dbid` FOREIGN KEY (`dbId`) REFERENCES `character_garrison_followers` (`dbId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison_follower_abilities
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison_missions
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_missions`;
CREATE TABLE `character_garrison_missions` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `missionId` int(10) unsigned NOT NULL,
  `offerTime` int(10) NOT NULL,
  `startTime` int(10) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`dbId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison_missions
-- ----------------------------

-- ----------------------------
-- Table structure for character_garrison_mission_rewards
-- ----------------------------
DROP TABLE IF EXISTS `character_garrison_mission_rewards`;
CREATE TABLE `character_garrison_mission_rewards` (
  `dbId` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT '0',
  `itemQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `currencyId` int(10) NOT NULL DEFAULT '0',
  `currencyQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `FollowerXP` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusAbilityId` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_garrison_mission_rewards
-- ----------------------------

-- ----------------------------
-- Table structure for character_gifts
-- ----------------------------
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE `character_gifts` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_gifts
-- ----------------------------

-- ----------------------------
-- Table structure for character_glyphs
-- ----------------------------
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE `character_glyphs` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyphId` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentGroup`,`glyphId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_glyphs
-- ----------------------------

-- ----------------------------
-- Table structure for character_homebind
-- ----------------------------
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE `character_homebind` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_homebind
-- ----------------------------

-- ----------------------------
-- Table structure for character_instance
-- ----------------------------
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE `character_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extendState` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_instance
-- ----------------------------

-- ----------------------------
-- Table structure for character_inventory
-- ----------------------------
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE `character_inventory` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for character_pet
-- ----------------------------
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  `specialization` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of character_pet
-- ----------------------------

-- ----------------------------
-- Table structure for character_pet_declinedname
-- ----------------------------
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_pet_declinedname
-- ----------------------------

-- ----------------------------
-- Table structure for character_pvp_talent
-- ----------------------------
DROP TABLE IF EXISTS `character_pvp_talent`;
CREATE TABLE `character_pvp_talent` (
  `Guid` bigint(20) unsigned NOT NULL,
  `TalentID` mediumint(8) unsigned NOT NULL,
  `TalentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_pvp_talent
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE `character_queststatus` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_daily
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE `character_queststatus_daily` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_daily
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_monthly
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE `character_queststatus_monthly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_monthly
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_objectives
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_objectives`;
CREATE TABLE `character_queststatus_objectives` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `objective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`,`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_objectives
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_objectives_criteria
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria`;
CREATE TABLE `character_queststatus_objectives_criteria` (
  `guid` bigint(20) unsigned NOT NULL,
  `questObjectiveId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`questObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_objectives_criteria
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_objectives_criteria_progress
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria_progress`;
CREATE TABLE `character_queststatus_objectives_criteria_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteriaId` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_objectives_criteria_progress
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_rewarded
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE `character_queststatus_rewarded` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_rewarded
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_seasonal
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE `character_queststatus_seasonal` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_seasonal
-- ----------------------------

-- ----------------------------
-- Table structure for character_queststatus_weekly
-- ----------------------------
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE `character_queststatus_weekly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_queststatus_weekly
-- ----------------------------

-- ----------------------------
-- Table structure for character_recovery
-- ----------------------------
DROP TABLE IF EXISTS `character_recovery`;
CREATE TABLE `character_recovery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivered` tinyint(1) DEFAULT '0',
  `account` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `class` int(11) unsigned NOT NULL,
  `level` int(11) unsigned NOT NULL,
  `skill1` int(11) NOT NULL DEFAULT '0',
  `skill1_value` int(11) NOT NULL DEFAULT '0',
  `skill2` int(11) NOT NULL DEFAULT '0',
  `skill2_value` int(11) NOT NULL DEFAULT '0',
  `items` text NOT NULL,
  `spells` text NOT NULL,
  `at_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of character_recovery
-- ----------------------------

-- ----------------------------
-- Table structure for character_reputation
-- ----------------------------
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE `character_reputation` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_reputation
-- ----------------------------

-- ----------------------------
-- Table structure for character_shop
-- ----------------------------
DROP TABLE IF EXISTS `character_shop`;
CREATE TABLE `character_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT '0',
  `itemCount` int(10) NOT NULL DEFAULT '0',
  `delivered` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_shop
-- ----------------------------

-- ----------------------------
-- Table structure for character_skills
-- ----------------------------
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE `character_skills` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_skills
-- ----------------------------

-- ----------------------------
-- Table structure for character_social
-- ----------------------------
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE `character_social` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_social
-- ----------------------------

-- ----------------------------
-- Table structure for character_spell
-- ----------------------------
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE `character_spell` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- ----------------------------
-- Records of character_spell
-- ----------------------------

-- ----------------------------
-- Table structure for character_spell_charges
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_charges`;
CREATE TABLE `character_spell_charges` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_charges
-- ----------------------------

-- ----------------------------
-- Table structure for character_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE `character_spell_cooldown` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for character_stats
-- ----------------------------
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE `character_stats` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower6` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_stats
-- ----------------------------

-- ----------------------------
-- Table structure for character_talent
-- ----------------------------
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE `character_talent` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentId` mediumint(8) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentId`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_talent
-- ----------------------------

-- ----------------------------
-- Table structure for character_transmog_outfits
-- ----------------------------
DROP TABLE IF EXISTS `character_transmog_outfits`;
CREATE TABLE `character_transmog_outfits` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `iconname` varchar(256) NOT NULL,
  `ignore_mask` int(11) NOT NULL DEFAULT '0',
  `appearance0` int(10) NOT NULL DEFAULT '0',
  `appearance1` int(10) NOT NULL DEFAULT '0',
  `appearance2` int(10) NOT NULL DEFAULT '0',
  `appearance3` int(10) NOT NULL DEFAULT '0',
  `appearance4` int(10) NOT NULL DEFAULT '0',
  `appearance5` int(10) NOT NULL DEFAULT '0',
  `appearance6` int(10) NOT NULL DEFAULT '0',
  `appearance7` int(10) NOT NULL DEFAULT '0',
  `appearance8` int(10) NOT NULL DEFAULT '0',
  `appearance9` int(10) NOT NULL DEFAULT '0',
  `appearance10` int(10) NOT NULL DEFAULT '0',
  `appearance11` int(10) NOT NULL DEFAULT '0',
  `appearance12` int(10) NOT NULL DEFAULT '0',
  `appearance13` int(10) NOT NULL DEFAULT '0',
  `appearance14` int(10) NOT NULL DEFAULT '0',
  `appearance15` int(10) NOT NULL DEFAULT '0',
  `appearance16` int(10) NOT NULL DEFAULT '0',
  `appearance17` int(10) NOT NULL DEFAULT '0',
  `appearance18` int(10) NOT NULL DEFAULT '0',
  `mainHandEnchant` int(10) NOT NULL DEFAULT '0',
  `offHandEnchant` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_transmog_outfits
-- ----------------------------

-- ----------------------------
-- Table structure for character_void_storage
-- ----------------------------
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `randomPropertyType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeId` int(10) unsigned NOT NULL DEFAULT '0',
  `fixedScalingLevel` int(10) unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT '0',
  `challengeId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int(10) unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_void_storage
-- ----------------------------

-- ----------------------------
-- Table structure for character_world_quest
-- ----------------------------
DROP TABLE IF EXISTS `character_world_quest`;
CREATE TABLE `character_world_quest` (
  `guid` bigint(20) unsigned NOT NULL,
  `questId` int(10) unsigned NOT NULL,
  `lastupdate` int(10) unsigned NOT NULL,
  `timer` int(10) unsigned NOT NULL,
  `variableID` int(10) unsigned NOT NULL,
  `value` int(10) NOT NULL,
  PRIMARY KEY (`guid`,`questId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_world_quest
-- ----------------------------

-- ----------------------------
-- Table structure for corpse
-- ----------------------------
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE `corpse` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- ----------------------------
-- Records of corpse
-- ----------------------------

-- ----------------------------
-- Table structure for corpse_phases
-- ----------------------------
DROP TABLE IF EXISTS `corpse_phases`;
CREATE TABLE `corpse_phases` (
  `OwnerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PhaseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OwnerGuid`,`PhaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of corpse_phases
-- ----------------------------

-- ----------------------------
-- Table structure for creature_respawn
-- ----------------------------
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE `creature_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of creature_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for gameobject_respawn
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE `gameobject_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- ----------------------------
-- Records of gameobject_respawn
-- ----------------------------

-- ----------------------------
-- Table structure for game_event_condition_save
-- ----------------------------
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_condition_save
-- ----------------------------

-- ----------------------------
-- Table structure for game_event_save
-- ----------------------------
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_event_save
-- ----------------------------

-- ----------------------------
-- Table structure for gm_bug
-- ----------------------------
DROP TABLE IF EXISTS `gm_bug`;
CREATE TABLE `gm_bug` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_bug
-- ----------------------------

-- ----------------------------
-- Table structure for gm_complaint
-- ----------------------------
DROP TABLE IF EXISTS `gm_complaint`;
CREATE TABLE `gm_complaint` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `targetCharacterGuid` bigint(20) unsigned NOT NULL,
  `complaintType` smallint(5) unsigned NOT NULL,
  `reportLineIndex` int(10) NOT NULL,
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_complaint
-- ----------------------------

-- ----------------------------
-- Table structure for gm_complaint_chatlog
-- ----------------------------
DROP TABLE IF EXISTS `gm_complaint_chatlog`;
CREATE TABLE `gm_complaint_chatlog` (
  `complaintId` int(10) unsigned NOT NULL,
  `lineId` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`complaintId`,`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_complaint_chatlog
-- ----------------------------

-- ----------------------------
-- Table structure for gm_suggestion
-- ----------------------------
DROP TABLE IF EXISTS `gm_suggestion`;
CREATE TABLE `gm_suggestion` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gm_suggestion
-- ----------------------------

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` bigint(20) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` bigint(20) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `masterLooterGuid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for group_instance
-- ----------------------------
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_instance
-- ----------------------------

-- ----------------------------
-- Table structure for group_member
-- ----------------------------
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` bigint(20) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- ----------------------------
-- Records of group_member
-- ----------------------------

-- ----------------------------
-- Table structure for guild
-- ----------------------------
DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` varchar(500) NOT NULL DEFAULT '',
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild
-- ----------------------------

-- ----------------------------
-- Table structure for guild_achievement
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE `guild_achievement` (
  `guildId` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_achievement
-- ----------------------------

-- ----------------------------
-- Table structure for guild_achievement_progress
-- ----------------------------
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE `guild_achievement_progress` (
  `guildId` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_achievement_progress
-- ----------------------------

-- ----------------------------
-- Table structure for guild_bank_eventlog
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE `guild_bank_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for guild_bank_item
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE `guild_bank_item` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_item
-- ----------------------------

-- ----------------------------
-- Table structure for guild_bank_right
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE `guild_bank_right` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_right
-- ----------------------------

-- ----------------------------
-- Table structure for guild_bank_tab
-- ----------------------------
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE `guild_bank_tab` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_bank_tab
-- ----------------------------

-- ----------------------------
-- Table structure for guild_eventlog
-- ----------------------------
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE `guild_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint(20) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint(20) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- ----------------------------
-- Records of guild_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for guild_finder_applicant
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE `guild_finder_applicant` (
  `guildId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_finder_applicant
-- ----------------------------

-- ----------------------------
-- Table structure for guild_finder_guild_settings
-- ----------------------------
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE `guild_finder_guild_settings` (
  `guildId` bigint(20) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_finder_guild_settings
-- ----------------------------

-- ----------------------------
-- Table structure for guild_member
-- ----------------------------
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint(20) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_member
-- ----------------------------

-- ----------------------------
-- Table structure for guild_member_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE `guild_member_withdraw` (
  `guid` bigint(20) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Daily Withdraws';

-- ----------------------------
-- Records of guild_member_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for guild_newslog
-- ----------------------------
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE `guild_newslog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guild_newslog
-- ----------------------------

-- ----------------------------
-- Table structure for guild_rank
-- ----------------------------
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE `guild_rank` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of guild_rank
-- ----------------------------

-- ----------------------------
-- Table structure for instance
-- ----------------------------
DROP TABLE IF EXISTS `instance`;
CREATE TABLE `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  `entranceId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance
-- ----------------------------

-- ----------------------------
-- Table structure for instance_reset
-- ----------------------------
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_reset
-- ----------------------------
INSERT INTO `instance_reset` VALUES ('33', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('36', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('249', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('249', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('269', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('409', '9', '1542427200');
INSERT INTO `instance_reset` VALUES ('469', '9', '1542427200');
INSERT INTO `instance_reset` VALUES ('509', '3', '1542254400');
INSERT INTO `instance_reset` VALUES ('531', '9', '1542427200');
INSERT INTO `instance_reset` VALUES ('532', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('533', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('533', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('534', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('540', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('542', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('543', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('544', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('545', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('546', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('547', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('548', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('550', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('552', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('553', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('554', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('555', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('556', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('557', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('558', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('560', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('564', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('564', '33', '1542772800');
INSERT INTO `instance_reset` VALUES ('565', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('568', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('574', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('575', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('576', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('578', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('580', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('585', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('595', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('598', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('599', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('600', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('601', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('602', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('603', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('603', '33', '1542772800');
INSERT INTO `instance_reset` VALUES ('604', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('608', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('615', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('615', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('616', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('616', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('619', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('624', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('624', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('631', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('631', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('631', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('631', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('632', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('643', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('644', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('645', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('649', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('649', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('649', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('649', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('650', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('657', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('658', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('668', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('669', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('669', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('669', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('669', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('670', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('671', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('671', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('671', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('671', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('720', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('720', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('720', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('720', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('724', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('724', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('724', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('724', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('725', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('754', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('754', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('754', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('754', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('755', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('757', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('757', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('757', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('757', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('859', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('938', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('939', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('940', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('959', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('960', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('961', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('962', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('967', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('967', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('967', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('967', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('967', '7', '1542772800');
INSERT INTO `instance_reset` VALUES ('994', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('996', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('996', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('996', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('996', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('996', '7', '1542772800');
INSERT INTO `instance_reset` VALUES ('1001', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1004', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1007', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1008', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('1008', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('1008', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('1008', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('1008', '7', '1542772800');
INSERT INTO `instance_reset` VALUES ('1009', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('1009', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('1009', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('1009', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('1009', '7', '1542772800');
INSERT INTO `instance_reset` VALUES ('1011', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1098', '3', '1542427200');
INSERT INTO `instance_reset` VALUES ('1098', '4', '1542427200');
INSERT INTO `instance_reset` VALUES ('1098', '5', '1542427200');
INSERT INTO `instance_reset` VALUES ('1098', '6', '1542427200');
INSERT INTO `instance_reset` VALUES ('1098', '7', '1542772800');
INSERT INTO `instance_reset` VALUES ('1136', '14', '1542427200');
INSERT INTO `instance_reset` VALUES ('1136', '15', '1542427200');
INSERT INTO `instance_reset` VALUES ('1136', '16', '1542427200');
INSERT INTO `instance_reset` VALUES ('1136', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1175', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1175', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1176', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1176', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1182', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1182', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1195', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1195', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1205', '14', '1542427200');
INSERT INTO `instance_reset` VALUES ('1205', '15', '1542427200');
INSERT INTO `instance_reset` VALUES ('1205', '16', '1542427200');
INSERT INTO `instance_reset` VALUES ('1205', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1208', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1208', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1209', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1209', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1228', '14', '1542427200');
INSERT INTO `instance_reset` VALUES ('1228', '15', '1542427200');
INSERT INTO `instance_reset` VALUES ('1228', '16', '1542427200');
INSERT INTO `instance_reset` VALUES ('1228', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1279', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1279', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1358', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1358', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1448', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('1448', '15', '1542772800');
INSERT INTO `instance_reset` VALUES ('1448', '16', '1542772800');
INSERT INTO `instance_reset` VALUES ('1448', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1456', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1456', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1458', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1458', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1466', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1466', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1477', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1477', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1492', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1492', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1493', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1493', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1501', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1501', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1516', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1520', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('1520', '15', '1542772800');
INSERT INTO `instance_reset` VALUES ('1520', '16', '1542772800');
INSERT INTO `instance_reset` VALUES ('1520', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1530', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('1530', '15', '1542772800');
INSERT INTO `instance_reset` VALUES ('1530', '16', '1542772800');
INSERT INTO `instance_reset` VALUES ('1530', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1544', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1544', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1571', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1648', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('1648', '15', '1542772800');
INSERT INTO `instance_reset` VALUES ('1648', '16', '1542772800');
INSERT INTO `instance_reset` VALUES ('1648', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1651', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1676', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('1676', '15', '1542772800');
INSERT INTO `instance_reset` VALUES ('1676', '16', '1542772800');
INSERT INTO `instance_reset` VALUES ('1676', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1677', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1677', '23', '1542772800');
INSERT INTO `instance_reset` VALUES ('1712', '14', '1542772800');
INSERT INTO `instance_reset` VALUES ('1712', '15', '1542772800');
INSERT INTO `instance_reset` VALUES ('1712', '16', '1542772800');
INSERT INTO `instance_reset` VALUES ('1712', '17', '1542772800');
INSERT INTO `instance_reset` VALUES ('1753', '2', '1542254400');
INSERT INTO `instance_reset` VALUES ('1753', '23', '1542772800');

-- ----------------------------
-- Table structure for instance_scenario_progress
-- ----------------------------
DROP TABLE IF EXISTS `instance_scenario_progress`;
CREATE TABLE `instance_scenario_progress` (
  `id` int(10) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instance_scenario_progress
-- ----------------------------

-- ----------------------------
-- Table structure for item_instance
-- ----------------------------
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE `item_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `randomPropertyId` int(10) unsigned NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  `transmogrification` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeId` int(10) unsigned NOT NULL DEFAULT '0',
  `enchantIllusion` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetSpeciesId` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetBreedData` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `battlePetDisplayId` int(10) unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- ----------------------------
-- Records of item_instance
-- ----------------------------

-- ----------------------------
-- Table structure for item_instance_artifact
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_artifact`;
CREATE TABLE `item_instance_artifact` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `artifactAppearanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `artifactTierId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_instance_artifact
-- ----------------------------

-- ----------------------------
-- Table structure for item_instance_artifact_powers
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_artifact_powers`;
CREATE TABLE `item_instance_artifact_powers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `artifactPowerId` int(10) unsigned NOT NULL,
  `purchasedRank` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`itemGuid`,`artifactPowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_instance_artifact_powers
-- ----------------------------

-- ----------------------------
-- Table structure for item_instance_gems
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_gems`;
CREATE TABLE `item_instance_gems` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `gemItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses1` text,
  `gemContext1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel1` int(10) unsigned NOT NULL DEFAULT '0',
  `gemItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses2` text,
  `gemContext2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel2` int(10) unsigned NOT NULL DEFAULT '0',
  `gemItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses3` text,
  `gemContext3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_instance_gems
-- ----------------------------

-- ----------------------------
-- Table structure for item_instance_modifiers
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_modifiers`;
CREATE TABLE `item_instance_modifiers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `fixedScalingLevel` int(10) unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT '0',
  `challengeId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_instance_modifiers
-- ----------------------------

-- ----------------------------
-- Table structure for item_instance_transmog
-- ----------------------------
DROP TABLE IF EXISTS `item_instance_transmog`;
CREATE TABLE `item_instance_transmog` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `itemModifiedAppearanceAllSpecs` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec1` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec2` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec3` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec4` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentAllSpecs` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec1` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec2` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec3` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_instance_transmog
-- ----------------------------

-- ----------------------------
-- Table structure for item_loot_items
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE `item_loot_items` (
  `container_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'random enchantment type',
  `rnd_prop` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_list_ids` text COMMENT 'Space separated list of bonus list ids',
  PRIMARY KEY (`container_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_loot_items
-- ----------------------------

-- ----------------------------
-- Table structure for item_loot_money
-- ----------------------------
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE `item_loot_money` (
  `container_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_loot_money
-- ----------------------------

-- ----------------------------
-- Table structure for item_refund_instance
-- ----------------------------
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (
  `item_guid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint(20) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_refund_instance
-- ----------------------------

-- ----------------------------
-- Table structure for item_soulbound_trade_data
-- ----------------------------
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE `item_soulbound_trade_data` (
  `itemGuid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- ----------------------------
-- Records of item_soulbound_trade_data
-- ----------------------------

-- ----------------------------
-- Table structure for lfg_data
-- ----------------------------
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- ----------------------------
-- Records of lfg_data
-- ----------------------------

-- ----------------------------
-- Table structure for log_gm
-- ----------------------------
DROP TABLE IF EXISTS `log_gm`;
CREATE TABLE `log_gm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `gm_account_id` bigint(20) DEFAULT NULL,
  `gm_account_name` blob,
  `gm_character_id` bigint(20) DEFAULT NULL,
  `gm_character_name` blob,
  `gm_ip` text,
  `target_account_id` bigint(20) DEFAULT NULL,
  `target_account_name` blob,
  `target_character_id` bigint(20) DEFAULT NULL,
  `target_character_name` blob,
  `target_ip` text,
  `command` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_gm
-- ----------------------------

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- ----------------------------
-- Records of mail
-- ----------------------------

-- ----------------------------
-- Table structure for mail_items
-- ----------------------------
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mail_items
-- ----------------------------

-- ----------------------------
-- Table structure for petition
-- ----------------------------
DROP TABLE IF EXISTS `petition`;
CREATE TABLE `petition` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition
-- ----------------------------

-- ----------------------------
-- Table structure for petition_sign
-- ----------------------------
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE `petition_sign` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- ----------------------------
-- Records of petition_sign
-- ----------------------------

-- ----------------------------
-- Table structure for pet_aura
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura
-- ----------------------------

-- ----------------------------
-- Table structure for pet_aura_effect
-- ----------------------------
DROP TABLE IF EXISTS `pet_aura_effect`;
CREATE TABLE `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_aura_effect
-- ----------------------------

-- ----------------------------
-- Table structure for pet_spell
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- ----------------------------
-- Records of pet_spell
-- ----------------------------

-- ----------------------------
-- Table structure for pet_spell_charges
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_charges`;
CREATE TABLE `pet_spell_charges` (
  `guid` int(10) unsigned NOT NULL,
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_charges
-- ----------------------------

-- ----------------------------
-- Table structure for pet_spell_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pet_spell_cooldown
-- ----------------------------

-- ----------------------------
-- Table structure for pool_quest_save
-- ----------------------------
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pool_quest_save
-- ----------------------------

-- ----------------------------
-- Table structure for pvpstats_battlegrounds
-- ----------------------------
DROP TABLE IF EXISTS `pvpstats_battlegrounds`;
CREATE TABLE `pvpstats_battlegrounds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint(4) NOT NULL,
  `bracket_id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvpstats_battlegrounds
-- ----------------------------

-- ----------------------------
-- Table structure for pvpstats_players
-- ----------------------------
DROP TABLE IF EXISTS `pvpstats_players`;
CREATE TABLE `pvpstats_players` (
  `battleground_id` bigint(20) unsigned NOT NULL,
  `character_guid` bigint(20) unsigned NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int(10) unsigned NOT NULL,
  `score_deaths` int(10) unsigned NOT NULL,
  `score_honorable_kills` int(10) unsigned NOT NULL,
  `score_bonus_honor` int(10) unsigned NOT NULL,
  `score_damage_done` int(10) unsigned NOT NULL,
  `score_healing_done` int(10) unsigned NOT NULL,
  `attr_1` int(10) unsigned NOT NULL,
  `attr_2` int(10) unsigned NOT NULL,
  `attr_3` int(10) unsigned NOT NULL,
  `attr_4` int(10) unsigned NOT NULL,
  `attr_5` int(10) unsigned NOT NULL,
  PRIMARY KEY (`battleground_id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pvpstats_players
-- ----------------------------

-- ----------------------------
-- Table structure for quest_tracker
-- ----------------------------
DROP TABLE IF EXISTS `quest_tracker`;
CREATE TABLE `quest_tracker` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `character_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest_accept_time` datetime NOT NULL,
  `quest_complete_time` datetime DEFAULT NULL,
  `quest_abandon_time` datetime DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT '0',
  `core_hash` varchar(120) NOT NULL DEFAULT '0',
  `core_revision` varchar(120) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quest_tracker
-- ----------------------------

-- ----------------------------
-- Table structure for reserved_name
-- ----------------------------
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- ----------------------------
-- Records of reserved_name
-- ----------------------------

-- ----------------------------
-- Table structure for updates
-- ----------------------------
DROP TABLE IF EXISTS `updates`;
CREATE TABLE `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of all applied updates in this database.';

-- ----------------------------
-- Records of updates
-- ----------------------------
INSERT INTO `updates` VALUES ('2017_05_03_class_hall_garrison_1.sql', '73712F2945EFD1A135F3583E99DCF7F51B4E0E4C', 'RELEASED', '2018-11-14 06:15:00', '784');
INSERT INTO `updates` VALUES ('2017_05_03_class_hall_garrison_2.sql', '2E93F5D7077E252621583C40E24A212FF1D7B3E2', 'RELEASED', '2018-11-14 06:15:00', '96');
INSERT INTO `updates` VALUES ('2017_05_15_char_world_quest.sql', '6BC41287EB825C2E6A6316130775DB1EACDC931C', 'RELEASED', '2018-11-14 06:15:00', '109');
INSERT INTO `updates` VALUES ('2017_11_17_01_characters_xprate.sql', '5F11FB10CA0ECBB526D73ED2FCC3494C708415DA', 'RELEASED', '2018-11-14 06:15:00', '184');
INSERT INTO `updates` VALUES ('2017_12_20_01_characters_log_gm.sql', '8857548FA4F5D5E073F08470B0998F3E9368F271', 'RELEASED', '2018-11-14 06:15:00', '116');
INSERT INTO `updates` VALUES ('2018_01_07_00_charactes_pvp_talents.sql', 'F7A184C8058C1988B5D55035D44D1EEC4D809D9E', 'RELEASED', '2018-11-14 06:15:00', '85');
INSERT INTO `updates` VALUES ('2018_01_13_01_charactes_pets.sql', '7437B6243B3CB6FA08F6A37BB39E38930B0DCFD3', 'RELEASED', '2018-11-14 06:15:00', '226');
INSERT INTO `updates` VALUES ('2018_02_02_01_character_shop.sql', '0A8138A4B8459BE49E4BCEF9934EEC1508FD301C', 'RELEASED', '2018-11-14 06:15:01', '166');
INSERT INTO `updates` VALUES ('2018_02_16_01_character_recovery.sql', 'C4FE2037526CD4D446F5F87FE05FAAFFD707C53D', 'RELEASED', '2018-11-14 06:15:01', '102');
INSERT INTO `updates` VALUES ('2018_02_18_01_characters.sql', 'B7EC9FD75FE2E565BD0335D78069D3C62CA98F5A', 'RELEASED', '2018-11-14 06:15:01', '101');
INSERT INTO `updates` VALUES ('2018_02_18_02_characters.sql', '75FA162A9B85D678B26F972371265F1EC2C75187', 'RELEASED', '2018-11-14 06:15:01', '163');
INSERT INTO `updates` VALUES ('2018_04_04_01_characters.sql', '53CFC4735CD7202D176FFD0528F85CA9AE042D17', 'RELEASED', '2018-11-14 06:15:01', '166');
INSERT INTO `updates` VALUES ('2018_04_24_01_characters.sql', '052AB4D9B121B3C08F949BE5812E0D15C6C00648', 'RELEASED', '2018-11-14 06:15:01', '31');
INSERT INTO `updates` VALUES ('2018_05_18_00_charactes_world_quest.sql', '67EFD0D1364A95B81623F1FF406F422311AD1E42', 'RELEASED', '2018-11-14 06:15:01', '108');
INSERT INTO `updates` VALUES ('2018_06_13_01_characters.sql', '9C3B4EA34EFA599723C39DC427C6C6D317CA1B9D', 'RELEASED', '2018-11-14 06:15:02', '240');
INSERT INTO `updates` VALUES ('2018_06_25_01_characters_archaeology.sql', 'C508912C269419EDD442748BE3DC3ECE69470A16', 'RELEASED', '2018-11-14 06:15:02', '167');
INSERT INTO `updates` VALUES ('2018_07_27_01_characters_garrison.sql', '166F7D2AC77841A6426CD54BD3C6544EE5ADF1DF', 'RELEASED', '2018-11-14 06:15:02', '118');
INSERT INTO `updates` VALUES ('2018_07_28_00_characters.sql', '31F66AE7831251A8915625EC7F10FA138AB8B654', 'RELEASED', '2018-11-14 06:15:02', '28');
INSERT INTO `updates` VALUES ('2018_10_08_01_characters_arena.sql', 'B747A63BC0B8A647C0A95717DD4618729A85573F', 'RELEASED', '2018-11-14 06:15:02', '206');
INSERT INTO `updates` VALUES ('2018_10_08_02_characters_currency.sql', 'CECFED9CB4166D65B424F1ABD6869A68DB58E6E5', 'RELEASED', '2018-11-14 06:15:02', '160');

-- ----------------------------
-- Table structure for updates_include
-- ----------------------------
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of directories where we want to include sql updates.';

-- ----------------------------
-- Records of updates_include
-- ----------------------------
INSERT INTO `updates_include` VALUES ('$/sql/ashamane/characters', 'RELEASED');

-- ----------------------------
-- Table structure for warden_action
-- ----------------------------
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warden_action
-- ----------------------------

-- ----------------------------
-- Table structure for worldstates
-- ----------------------------
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- ----------------------------
-- Records of worldstates
-- ----------------------------
INSERT INTO `worldstates` VALUES ('20001', '0', 'NextArenaPointDistributionTime');
INSERT INTO `worldstates` VALUES ('20002', '0', 'NextWeeklyQuestResetTime');
INSERT INTO `worldstates` VALUES ('20003', '0', 'NextBGRandomDailyResetTime');
INSERT INTO `worldstates` VALUES ('20004', '0', 'cleaning_flags');

-- ----------------------------
-- Table structure for world_quest
-- ----------------------------
DROP TABLE IF EXISTS `world_quest`;
CREATE TABLE `world_quest` (
  `id` int(10) unsigned NOT NULL,
  `rewardid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of world_quest
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
