local explode_into_capsule = {
    {
        type = "area",
        radius = 9,
        repeat_count = 3,
        target_entities = false,
        trigger_from_target = true,
        action_delivery = {
            {
                type = "projectile",
                projectile = "poison-capsule",
            },
        }
    },
}

local poison_rocket_projectile = table.deepcopy(data.raw.projectile["rocket"])
poison_rocket_projectile.name = "poison-rocket-projectile"

local prp_target_effect = poison_rocket_projectile.action.action_delivery.target_effect
prp_target_effect[2].damage.amount = 20
prp_target_effect[6] = explode_into_capsule

data:extend({poison_rocket_projectile})