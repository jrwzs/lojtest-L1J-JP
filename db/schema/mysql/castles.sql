SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `castles`
-- ----------------------------
DROP TABLE IF EXISTS `castles`;
CREATE TABLE IF NOT EXISTS `castles` (
  `id` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `war_time` datetime DEFAULT NULL,
  `tax_rate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `public_money` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
