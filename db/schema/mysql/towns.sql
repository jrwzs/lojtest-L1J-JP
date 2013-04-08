SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `towns`
-- ----------------------------
DROP TABLE IF EXISTS `towns`;
CREATE TABLE IF NOT EXISTS `towns` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `leader_id` int(10) unsigned NOT NULL DEFAULT '0',
  `leader_name` varchar(255) DEFAULT NULL,
  `tax_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `tax_rate_reserved` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_money` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_money_yesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `town_tax` int(10) unsigned NOT NULL DEFAULT '0',
  `town_fix_tax` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
