local acid_capsule_stream = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
acid_capsule_stream.name = "acid-player-stream"


acid_capsule_stream.initial_action[1].action_delivery.target_effects[2].entity_name = "acid-splash-player-fire"
local asp_stream_effects = acid_capsule_stream.initial_action[2].action_delivery.target_effects
asp_stream_effects[1].sticker = "acid-player-sticker"
asp_stream_effects[2].damage = {amount = 90, type = "acid"}

data:extend({acid_capsule_stream})