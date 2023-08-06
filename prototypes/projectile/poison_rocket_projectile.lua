local explode_into_capsule = {
    type = "area",
    radius = 16,
    repeat_count = 4,
    target_entities = false,
    trigger_from_target = true,
    action_delivery = {
        type = "projectile",
        projectile = "poison-capsule",
        starting_speed = 0.35
    }
}

local poison_rocket_projectile = table.deepcopy(data.raw.projectile["rocket"])
poison_rocket_projectile.name = "poison-rocket-projectile"
poison_rocket_projectile.action = {poison_rocket_projectile.action}
poison_rocket_projectile.action[1].action_delivery.target_effects[2].damage.amount = 20
table.insert(poison_rocket_projectile.action, explode_into_capsule)


data:extend({poison_rocket_projectile})