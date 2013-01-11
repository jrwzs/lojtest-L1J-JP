set driver=mysql
set locale=ja
type .\schema\%driver%\accounts.sql > create_tables.sql
type .\schema\%driver%\armor.sql >> create_tables.sql
type .\schema\%driver%\armor_set.sql >> create_tables.sql
type .\schema\%driver%\ban_ip.sql >> create_tables.sql
type .\schema\%driver%\beginner_items.sql >> create_tables.sql
type .\schema\%driver%\board.sql >> create_tables.sql
type .\schema\%driver%\board_auction.sql >> create_tables.sql
type .\schema\%driver%\castle.sql >> create_tables.sql
type .\schema\%driver%\character_buddys.sql >> create_tables.sql
type .\schema\%driver%\character_buffs.sql >> create_tables.sql
type .\schema\%driver%\character_config.sql >> create_tables.sql
type .\schema\%driver%\character_quests.sql >> create_tables.sql
type .\schema\%driver%\character_skills.sql >> create_tables.sql
type .\schema\%driver%\character_teleport.sql >> create_tables.sql
type .\schema\%driver%\characters.sql >> create_tables.sql
type .\schema\%driver%\clan_data.sql >> create_tables.sql
type .\schema\%driver%\commands.sql >> create_tables.sql
type .\schema\%driver%\cooking_ingredients.sql >> create_tables.sql
type .\schema\%driver%\cooking_recipes.sql >> create_tables.sql
type .\schema\%driver%\door_gfxs.sql >> create_tables.sql
type .\schema\%driver%\drop_item.sql >> create_tables.sql
type .\schema\%driver%\droplist.sql >> create_tables.sql
type .\schema\%driver%\dungeon.sql >> create_tables.sql
type .\schema\%driver%\dungeon_random.sql >> create_tables.sql
type .\schema\%driver%\etcitem.sql >> create_tables.sql
type .\schema\%driver%\getback.sql >> create_tables.sql
type .\schema\%driver%\getback_restart.sql >> create_tables.sql
type .\schema\%driver%\house.sql >> create_tables.sql
type .\schema\%driver%\inn.sql >> create_tables.sql
type .\schema\%driver%\inn_key.sql >> create_tables.sql
type .\schema\%driver%\inventory_items.sql >> create_tables.sql
type .\schema\%driver%\letter.sql >> create_tables.sql
type .\schema\%driver%\log_accelerator.sql >> create_tables.sql
type .\schema\%driver%\log_chat.sql >> create_tables.sql
type .\schema\%driver%\log_enchant.sql >> create_tables.sql
type .\schema\%driver%\magic_doll.sql >> create_tables.sql
type .\schema\%driver%\mail.sql >> create_tables.sql
type .\schema\%driver%\mapids.sql >> create_tables.sql
type .\schema\%driver%\map_timer.sql >> create_tables.sql
type .\schema\%driver%\mobgroup.sql >> create_tables.sql
type .\schema\%driver%\mobskill.sql >> create_tables.sql
type .\schema\%driver%\npc.sql >> create_tables.sql
type .\schema\%driver%\npcaction.sql >> create_tables.sql
type .\schema\%driver%\npcchat.sql >> create_tables.sql
type .\schema\%driver%\petitem.sql >> create_tables.sql
type .\schema\%driver%\pets.sql >> create_tables.sql
type .\schema\%driver%\pettypes.sql >> create_tables.sql
type .\schema\%driver%\polymorphs.sql >> create_tables.sql
type .\schema\%driver%\race_ticket.sql >> create_tables.sql
type .\schema\%driver%\resolvent.sql >> create_tables.sql
type .\schema\%driver%\shop.sql >> create_tables.sql
type .\schema\%driver%\skills.sql >> create_tables.sql
type .\schema\%driver%\spawnlist.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_boss.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_door.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_furniture.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_light.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_npc.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_time.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_trap.sql >> create_tables.sql
type .\schema\%driver%\spawnlist_ub.sql >> create_tables.sql
type .\schema\%driver%\spr_action.sql >> create_tables.sql
type .\schema\%driver%\town.sql >> create_tables.sql
type .\schema\%driver%\trap.sql >> create_tables.sql
type .\schema\%driver%\ub_managers.sql >> create_tables.sql
type .\schema\%driver%\ub_settings.sql >> create_tables.sql
type .\schema\%driver%\ub_times.sql >> create_tables.sql
type .\schema\%driver%\weapon.sql >> create_tables.sql
type .\schema\%driver%\weapon_skill.sql >> create_tables.sql
type .\records\%locale%\armor.sql >> create_tables.sql
type .\records\%locale%\armor_set.sql >> create_tables.sql
type .\records\%locale%\beginner_items.sql >> create_tables.sql
type .\records\%locale%\board_auction.sql >> create_tables.sql
type .\records\%locale%\castle.sql >> create_tables.sql
type .\records\%locale%\commands.sql >> create_tables.sql
type .\records\%locale%\cooking_ingredients.sql >> create_tables.sql
type .\records\%locale%\cooking_recipes.sql >> create_tables.sql
type .\records\%locale%\door_gfxs.sql >> create_tables.sql
type .\records\%locale%\drop_item.sql >> create_tables.sql
type .\records\%locale%\droplist.sql >> create_tables.sql
type .\records\%locale%\dungeon.sql >> create_tables.sql
type .\records\%locale%\dungeon_random.sql >> create_tables.sql
type .\records\%locale%\etcitem.sql >> create_tables.sql
type .\records\%locale%\getback.sql >> create_tables.sql
type .\records\%locale%\getback_restart.sql >> create_tables.sql
type .\records\%locale%\house.sql >> create_tables.sql
type .\records\%locale%\inn.sql >> create_tables.sql
type .\records\%locale%\magic_doll.sql >> create_tables.sql
type .\records\%locale%\mapids.sql >> create_tables.sql
type .\records\%locale%\mobgroup.sql >> create_tables.sql
type .\records\%locale%\mobskill.sql >> create_tables.sql
type .\records\%locale%\npc.sql >> create_tables.sql
type .\records\%locale%\npcaction.sql >> create_tables.sql
type .\records\%locale%\npcchat.sql >> create_tables.sql
type .\records\%locale%\petitem.sql >> create_tables.sql
type .\records\%locale%\pettypes.sql >> create_tables.sql
type .\records\%locale%\polymorphs.sql >> create_tables.sql
type .\records\%locale%\resolvent.sql >> create_tables.sql
type .\records\%locale%\shop.sql >> create_tables.sql
type .\records\%locale%\skills.sql >> create_tables.sql
type .\records\%locale%\spawnlist.sql >> create_tables.sql
type .\records\%locale%\spawnlist_boss.sql >> create_tables.sql
type .\records\%locale%\spawnlist_door.sql >> create_tables.sql
type .\records\%locale%\spawnlist_furniture.sql >> create_tables.sql
type .\records\%locale%\spawnlist_light.sql >> create_tables.sql
type .\records\%locale%\spawnlist_npc.sql >> create_tables.sql
type .\records\%locale%\spawnlist_time.sql >> create_tables.sql
type .\records\%locale%\spawnlist_trap.sql >> create_tables.sql
type .\records\%locale%\spawnlist_ub.sql >> create_tables.sql
type .\records\%locale%\spr_action.sql >> create_tables.sql
type .\records\%locale%\town.sql >> create_tables.sql
type .\records\%locale%\trap.sql >> create_tables.sql
type .\records\%locale%\ub_managers.sql >> create_tables.sql
type .\records\%locale%\ub_settings.sql >> create_tables.sql
type .\records\%locale%\ub_times.sql >> create_tables.sql
type .\records\%locale%\weapon.sql >> create_tables.sql
type .\records\%locale%\weapon_skill.sql >> create_tables.sql