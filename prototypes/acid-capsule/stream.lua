local stream = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
stream.name = "acid-player-stream"
stream.initial_action[2].force = "all"

local effect = stream.initial_action[2].action_delivery.target_effects[2]
effect.entity_name = "acid-splash-player-fire"
effect.damage = {
    amount = 90,
    type = "acid",
}

table.remove(effect, 1)

data:extend({ stream })
