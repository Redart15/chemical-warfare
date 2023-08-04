local damage = 350/3600

local acid_splash_fire_player = table.deepcopy(data.raw.fire["acid-splash-fire-spitter-big"])
acid_splash_fire_player.name = "acid-splash-fire-player"
acid_splash_fire_player.maximum_damage_multiplier = 0
acid_splash_fire_player.damage_per_tick = {amount = damage, type = "acid"}
acid_splash_fire_player.initial_lifetime = 1800
acid_splash_fire_player.on_damage_tick_effect.action_delivery.target_effects[1].show_in_tooltip = false
acid_splash_fire_player.on_damage_tick_effect.action_delivery.target_effects[2].apply_damage_to_trees = true



data:extend({acid_splash_fire_player})