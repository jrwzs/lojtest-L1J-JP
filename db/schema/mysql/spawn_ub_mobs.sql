SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `spawn_ub_mobs`
-- ----------------------------
DROP TABLE IF EXISTS `spawn_ub_mobs`;
CREATE TABLE IF NOT EXISTS `spawn_ub_mobs` (
  `id` int(10) unsigned NOT NULL,
  `ub_id` int(10) unsigned NOT NULL,
  `pattern` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `npc_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `spawn_delay` int(10) unsigned NOT NULL DEFAULT '0',
  `seal_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
