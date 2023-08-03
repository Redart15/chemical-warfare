local acid_stream = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
acid_stream.name = "acid-stream-player"
acid_stream.initial_action[2].action_delivery.force = "all"
acid_stream.initial_action[2].action_delivery.target_effects[2].amount = 20 -- does seem to do anything

data:extend{acid_stream}
