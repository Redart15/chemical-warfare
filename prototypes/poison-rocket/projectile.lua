local projectile = table.deepcopy(data.raw.projectile["rocket"])
projectile.name = "poison-rocket-projectile"
projectile.action = {projectile.action}
projectile.action[1].action_delivery.target_effects[2].damage.amount = 20

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
table.insert(projectile.action, explode_into_capsule)

data:extend({projectile})