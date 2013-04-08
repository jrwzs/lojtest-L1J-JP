-- ----------------------------
-- Table structure for `UBS`
-- ----------------------------
DROP TABLE IF EXISTS `UBS`;
CREATE TABLE `UBS` (
  `ID` INT NOT NULL,
  `NAME` VARCHAR(255) DEFAULT NULL,
  `MAP_ID` INT NOT NULL,
  `AREA_X1` INT NOT NULL,
  `AREA_Y1` INT NOT NULL,
  `AREA_X2` INT NOT NULL,
  `AREA_Y2` INT NOT NULL,
  `MIN_LEVEL` INT NOT NULL,
  `MAX_LEVEL` INT NOT NULL,
  `MAX_PLAYER` INT NOT NULL,
  `ENTER_ROYAL` TINYINT NOT NULL DEFAULT '1',
  `ENTER_KNIGHT` TINYINT NOT NULL DEFAULT '1',
  `ENTER_WIZARD` TINYINT NOT NULL DEFAULT '1',
  `ENTER_ELF` TINYINT NOT NULL DEFAULT '1',
  `ENTER_DARKELF` TINYINT NOT NULL DEFAULT '1',
  `ENTER_DRAGONKNIGHT` TINYINT NOT NULL DEFAULT '1',
  `ENTER_ILLUSIONIST` TINYINT NOT NULL DEFAULT '1',
  `ENTER_MALE` TINYINT NOT NULL DEFAULT '1',
  `ENTER_FEMALE` TINYINT NOT NULL DEFAULT '1',
  `USE_POT` TINYINT NOT NULL DEFAULT '1',
  `HPR_BONUS` INT NOT NULL DEFAULT '0',
  `MPR_BONUS` INT NOT NULL DEFAULT '0'
);
-- ----------------------------
-- Index for `UBS`
-- ----------------------------
CREATE PRIMARY KEY `UBS_PK` ON `UBS`(`ID`);
