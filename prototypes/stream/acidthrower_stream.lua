local acid_player_stream = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
acid_player_stream.name = "acidthrower-stream"

acid_player_stream.initial_action = nil
acid_player_stream.action = {
    {
        type = "area",
        radius = 2.5,
        action_delivery = {
            type = "instant",
            target_effects = {
                {
                    type = "damage",
                    apply_damage_to_trees = true,
                    damage = {
                        amount = 6,
                        type = "acid",
                    },
                },
                {
                    type = "create-sticker",
                    sticker = "acid-player-sticker"
                }
            },
        },
    },
    {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = {
                {
                    type = "create-fire",
                    entity_name = "acid-splash-player-fire",
                    initial_ground_flame_count = 1,
                    show_in_tooltip = true,
                },
            }
        }
    }
}


data:extend({acid_player_stream})