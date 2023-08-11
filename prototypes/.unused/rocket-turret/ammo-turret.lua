local turret = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
turret.name = "test-turret"
turret.inventory_size = 4
turret.automated_ammo_count = 50
local attack_parameters = turret.attack_parameters
attack_parameters.range = 36
attack_parameters.ammo_type = {
    category = "rocket",
    target_type = "position",
}
attack_parameters.ammo_categories = {
    "rocket",
}
attack_parameters.cooldown = 60
attack_parameters.min_range = 10
attack_parameters.turn_range = 180 / 360
attack_parameters.damage_modifier = 2


data:extend({ turret })
