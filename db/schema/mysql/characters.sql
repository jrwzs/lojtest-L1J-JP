SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `characters`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(10) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` datetime DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `high_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `max_hp` int(10) unsigned NOT NULL DEFAULT '0',
  `cur_hp` int(10) unsigned NOT NULL DEFAULT '0',
  `max_mp` int(10) unsigned NOT NULL DEFAULT '0',
  `cur_mp` int(10) unsigned NOT NULL DEFAULT '0',
  `ac` tinyint(3) NOT NULL DEFAULT '0',
  `str` tinyint(3) NOT NULL DEFAULT '0',
  `con` tinyint(3) NOT NULL DEFAULT '0',
  `dex` tinyint(3) NOT NULL DEFAULT '0',
  `cha` tinyint(3) NOT NULL DEFAULT '0',
  `int` tinyint(3) NOT NULL DEFAULT '0',
  `wis` tinyint(3) NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `class` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `heading` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `loc_x` int(10) unsigned NOT NULL DEFAULT '0',
  `loc_y` int(10) unsigned NOT NULL DEFAULT '0',
  `map_id` int(10) unsigned NOT NULL DEFAULT '0',
  `food` int(10) unsigned NOT NULL DEFAULT '0',
  `lawful` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `clan_id` int(10) unsigned NOT NULL DEFAULT '0',
  `clan_name` varchar(255) DEFAULT NULL,
  `clan_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `elixir_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `elf_attr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pk_count` int(10) unsigned NOT NULL DEFAULT '0',
  `pk_count_for_elf` int(10) unsigned NOT NULL DEFAULT '0',
  `exp_res` int(10) unsigned NOT NULL DEFAULT '0',
  `partner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `online_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hometown_id` int(10) unsigned NOT NULL DEFAULT '0',
  `contribution` int(10) unsigned NOT NULL DEFAULT '0',
  `pay` int(10) unsigned NOT NULL DEFAULT '0',
  `hell_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `karma` int(10) NOT NULL DEFAULT '0',
  `last_pk` datetime DEFAULT NULL,
  `last_pk_for_elf` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `rejoin_clan_time` datetime DEFAULT NULL,
  `original_str` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `original_con` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `original_dex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `original_cha` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `original_int` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `original_wis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_additional_warehouse` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logout_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`account_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
