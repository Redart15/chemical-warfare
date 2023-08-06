local stream = table.deepcopy(data.raw.stream["acid-stream-spitter-big"])
stream.name = "acidthrower-stream"
stream.particle_horizontal_speed = 0.45
stream.initial_action = nil
stream.action = {
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
                        amount = 32,
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

data:extend({ stream })
