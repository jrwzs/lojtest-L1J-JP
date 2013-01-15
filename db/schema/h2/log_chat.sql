-- ----------------------------
-- Table structure for `LOG_CHAT`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `LOG_CHAT` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` VARCHAR(255) NOT NULL,
  `CHAR_ID` INT NOT NULL,
  `NAME` VARCHAR(255) NOT NULL,
  `CLAN_ID` INT NOT NULL,
  `CLAN_NAME` VARCHAR(255) DEFAULT NULL,
  `LOCX` INT NOT NULL,
  `LOCY` INT NOT NULL,
  `MAPID` INT NOT NULL,
  `TYPE` INT NOT NULL,
  `TARGET_ACCOUNT_NAME` VARCHAR(255) DEFAULT NULL,
  `TARGET_ID` INT DEFAULT '0',
  `TARGET_NAME` VARCHAR(255) DEFAULT NULL,
  `TARGET_CLAN_ID` INT DEFAULT NULL,
  `TARGET_CLAN_NAME` VARCHAR(255) DEFAULT NULL,
  `TARGET_LOCX` INT DEFAULT NULL,
  `TARGET_LOCY` INT DEFAULT NULL,
  `TARGET_MAPID` INT DEFAULT NULL,
  `CONTENT` VARCHAR(255) NOT NULL,
  `DATETIME` DATETIME NOT NULL
);
-- ----------------------------
-- Index for `LOG_CHAT`
-- ----------------------------
CREATE PRIMARY KEY IF NOT EXISTS `LOG_CHAT_PK` ON `LOG_CHAT`(`ID`);