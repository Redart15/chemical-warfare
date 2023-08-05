local acid_player_sticker = table.deepcopy(data.raw.sticker["slowdown-sticker"])
local aps_animation = table.deepcopy(data.raw.sticker["acid-sticker-big"].animation)
local damage = 100/600 -- 10 seconds

acid_player_sticker.name = "acid-player-sticker"
acid_player_sticker.animation = aps_animation
acid_player_sticker.duration_in_ticks = 600
acid_player_sticker.flags = {"breaths-air"}
acid_player_sticker.spread_fire_entity = "acid-splash-player-fire"
acid_player_sticker.damage_per_tick = {
    amount = damage,
    type = "acid",
    -- vaporize = true,
}
acid_player_sticker.target_movement_modifier = 0.9
acid_player_sticker.spawn_entity = "acid-splash-player-fire"


data:extend({acid_player_sticker})
