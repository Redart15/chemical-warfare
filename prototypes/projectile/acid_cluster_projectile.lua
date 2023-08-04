local capsule_explosion_sound = {
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-1.ogg",
        volume = 0.8
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-2.ogg",
        volume = 0.8
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-3.ogg",
        volume = 0.8
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-4.ogg",
        volume = 0.8
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-5.ogg",
        volume = 0.8
    }
}


local acid_action = {
    type = "stream",
    stream = "acid-stream-player",
}

local acid_cluster_projectile = table.deepcopy(data.raw.projectile["slowdown-capsule"])
acid_cluster_projectile.name = "acid-cluster-projectile"
acid_cluster_projectile.action = {
    {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = {
                {
                    type = "nested-result",
                    action = 
                    {
                        {
                            type = "cluster",
                            distance = 2,
                            cluster_count = 5,
                            distance_deviation = 1,
                            action_delivery = acid_action
                        },
                        {
                            type = "area",
                            repeat_count = 3,
                            target_entities = false,
                            trigger_from_target = true,
                            radius = 4,
                            action_delivery = acid_action,                      
                        }
                    }
                },
                {
                    type = "play-sound",
                    sound = capsule_explosion_sound
                }
            }
        }
    }
}

data:extend{acid_cluster_projectile}