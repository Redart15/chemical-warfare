local acp_capsule_explosion_sound = {
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-1.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-2.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-3.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-4.ogg",
        volume = 1.0
    },
    {
        filename = "__base__/sound/fight/poison-capsule-explosion-5.ogg",
        volume = 1.0
    }
}

local ac_target_sound = {
    type = "play-sound",
    sound = acp_capsule_explosion_sound
}

local acp_acid_action = {
    type = "stream",
    stream = "acid-player-stream",
}

local acid_cluster_projectile = table.deepcopy(data.raw.projectile["slowdown-capsule"])
acid_cluster_projectile.name = "acid-cluster-projectile"
acid_cluster_projectile.action = {
    -- {
    --     type = "cluster",
    --     distance = 2,
    --     cluster_count = 5,
    --     distance_deviation = 1,
    --     action_delivery = acp_acid_action,
    -- },
    {
        type = "area",
        repeat_count = 8,
        target_entities = false,
        trigger_from_target = true,
        radius = 3.5,
        action_delivery = acp_acid_action,                      
    },
    {
        type = "direct",
        action_delivery = {
            type = "instant",
            target_effects = ac_target_sound,
        },
    }
}

data:extend{acid_cluster_projectile}