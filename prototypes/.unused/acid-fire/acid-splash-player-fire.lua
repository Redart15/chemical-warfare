local fire = table.deepcopy(data.raw.fire["acid-splash-fire-spitter-big"])
fire.name = "acid-splash-player-fire"
fire.initial_lifetime = 120
fire.on_damage_tick_effect = nil

local burnt_patch = table.deepcopy(data.raw.fire["fire-flame"])
fire.burnt_patch_lifetime = 600
fire.burnt_patch_alpha_default = 0.4
fire.burnt_patch_alpha_variations = burnt_patch.burnt_patch_alpha_variations
fire.burnt_patch_pictures = burnt_patch.burnt_patch_pictures

data:extend({ fire })
