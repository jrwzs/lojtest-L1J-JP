-- ----------------------------
-- Table structure for `NPC_ACTIONS`
-- ----------------------------
DROP TABLE IF EXISTS `NPC_ACTIONS`;
CREATE TABLE `NPC_ACTIONS` (
  `NPC_ID` INT NOT NULL,
  `NORMAL_ACTION` VARCHAR(255) DEFAULT NULL,
  `CHAOTIC_ACTION` VARCHAR(255) DEFAULT NULL,
  `TELEPORT_URL` VARCHAR(255) DEFAULT NULL,
  `TELEPORT_URLA` VARCHAR(255) DEFAULT NULL
);
-- ----------------------------
-- Index for `NPC_ACTIONS`
-- ----------------------------
CREATE PRIMARY KEY `NPC_ACTIONS_PK` ON `NPC_ACTIONS`(`NPC_ID`);
