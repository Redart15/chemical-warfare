-- local damage = 30/600


local acid_splash_player_fire = table.deepcopy(data.raw.fire["acid-splash-fire-spitter-big"])
acid_splash_player_fire.name = "acid-splash-player-fire"
acid_splash_player_fire.maximum_damage_multiplier = 0
acid_splash_player_fire.initial_lifetime = 300
acid_splash_player_fire.damage_per_tick = {amount = 0 ,type = "acid"}
acid_splash_player_fire.on_damage_tick_effect.force = "all"
-- acid_splash_player_fire.filter_enabled = false
acid_splash_player_fire.burnt_patch_lifetime = 360

local fromFire = table.deepcopy(data.raw.fire["fire-flame"])
acid_splash_player_fire.burnt_patch_alpha_variations = fromFire.burnt_patch_alpha_variations
acid_splash_player_fire.burnt_patch_pictures = fromFire.burnt_patch_pictures

local asfp_target_effect = acid_splash_player_fire.on_damage_tick_effect.action_delivery.target_effects
asfp_target_effect[1].show_in_tooltip = false
asfp_target_effect[1].sticker = "acid-player-sticker"
asfp_target_effect[2].apply_damage_to_trees = true --tree take no damage
asfp_target_effect[2].damage = {amount = 10, type = "acid"}


data:extend({acid_splash_player_fire})