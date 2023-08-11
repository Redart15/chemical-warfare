data:extend(
    {
        {
            type = "technology",
            icons = {
                {
                    icon = data.raw.technology["explosive-rocketry"].icon,
                    tint = { r = 0/ 255, b = 255 / 255, g = 120 / 255, a = 0.3 },
                },
            },
            icon_mipmaps = 4,
            icon_size = 256,
            name = "noxious-rockertry",
            prerequisites = {
                "rocketry",
                "military-3",
                "chemical-warfare",
            },
            unit = {
                time = 30,
                count = 100,
                ingredients = {
                    {
                        "automation-science-pack",
                        1
                    },
                    {
                        "logistic-science-pack",
                        1
                    },
                    {
                        "chemical-science-pack",
                        1
                    },
                    {
                        "military-science-pack",
                        1
                    }
                },
            },
            effects = {
                {
                    recipe = "poison-rocket-ammo",
                    type = "unlock-recipe"
                },
            }
        },
    }
)
