local acid_stream = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
acid_stream.name = "acid-fire-stream"
acid_stream.initial_action[2].action_delivery.force = "all"
acid_stream.initial_action[2].action_delivery.target_effects[1].sticker = "acid-fire-sticker"



-- for index, value in ipairs(acid_stream) do
--     if value == "special_neutral_target_damage" then
--         table.remove(acid_stream,acid_stream[index])
--     end
-- end

-- acid_stream.special_neutral_target_damage.amount = 100

data:extend{acid_stream}
