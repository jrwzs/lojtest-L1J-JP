-- ----------------------------
-- Table structure for `ENCHANT_LOGS`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `ENCHANT_LOGS` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `CHAR_ID` INT NOT NULL,
  `ITEM_ID` INT NOT NULL,
  `OLD_ENCHANT_LEVEL` TINYINT NOT NULL DEFAULT '0',
  `NEW_ENCHANT_LEVEL` TINYINT NOT NULL DEFAULT '0'
);
-- ----------------------------
-- Index for `ENCHANT_LOGS`
-- ----------------------------
CREATE PRIMARY KEY IF NOT EXISTS `ENCHANT_LOGS_PK` ON `ENCHANT_LOGS`(`ID`);
CREATE INDEX IF NOT EXISTS `ENCHANT_LOGS_CHAR_ID` ON `ENCHANT_LOGS`(`CHAR_ID`);
