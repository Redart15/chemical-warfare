
local acid_splash_player_fire = table.deepcopy(data.raw.fire["acid-splash-fire-spitter-big"])
acid_splash_player_fire.name = "acid-splash-player-fire"
acid_splash_player_fire.initial_lifetime = 120
acid_splash_player_fire.on_damage_tick_effect.force = "all"
acid_splash_player_fire.burnt_patch_lifetime = 600

local fromFire = table.deepcopy(data.raw.fire["fire-flame"])
acid_splash_player_fire.burnt_patch_alpha_default = 0.4
acid_splash_player_fire.burnt_patch_alpha_variations = fromFire.burnt_patch_alpha_variations
acid_splash_player_fire.burnt_patch_pictures = fromFire.burnt_patch_pictures

-- local asfp_target_effect = acid_splash_player_fire.on_damage_tick_effect.action_delivery.target_effects
-- asfp_target_effect[1].show_in_tooltip = false
-- asfp_target_effect[1].sticker = "acid-player-sticker"
acid_splash_player_fire.on_damage_tick_effect = nil


data:extend({acid_splash_player_fire})