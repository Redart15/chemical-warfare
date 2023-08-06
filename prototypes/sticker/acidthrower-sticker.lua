local acidthrower_sticker = table.deepcopy(data.raw.sticker["slowdown-sticker"])
local aps_animation = table.deepcopy(data.raw.sticker["acid-sticker-big"].animation)
local damage = 100/600 -- 10 seconds

acidthrower_sticker.name = "acid-player-sticker"
acidthrower_sticker.animation = aps_animation
acidthrower_sticker.duration_in_ticks = 600
acidthrower_sticker.flags = {"breaths-air"}
acidthrower_sticker.spread_fire_entity = "acid-splash-player-fire"
acidthrower_sticker.damage_per_tick = {
    amount = damage,
    type = "acid",
}

acidthrower_sticker.target_movement_modifier = 0.9
acidthrower_sticker.spawn_entity = "acid-splash-player-fire"


data:extend({acidthrower_sticker})
