-- ----------------------------
-- Table structure for `CASTLES`
-- ----------------------------
DROP TABLE IF EXISTS `CASTLES`;
CREATE TABLE `CASTLES` (
  `ID` TINYINT NOT NULL,
  `NAME` VARCHAR(255) DEFAULT NULL,
  `WAR_TIME` DATETIME DEFAULT NULL,
  `TAX_RATE` TINYINT NOT NULL DEFAULT '0',
  `PUBLIC_MONEY` INT NOT NULL DEFAULT '0',
);
-- ----------------------------
-- Index for `CASTLES`
-- ----------------------------
CREATE PRIMARY KEY `CASTLES_PK` ON `CASTLES`(`ID`);
