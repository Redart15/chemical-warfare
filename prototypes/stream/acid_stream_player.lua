local acid_stream_player = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
acid_stream_player.name = "acid-stream-player"
acid_stream_player.initial_action[1].action_delivery.target_effects[2].entity_name = "acid-splash-fire-player"
local stream_effects = acid_stream_player.initial_action[2].action_delivery.target_effects
stream_effects[1].sticker = "acid-player-sticker"
stream_effects[2].damage = {amount = 10, type = "acid"}


data:extend({acid_stream_player})