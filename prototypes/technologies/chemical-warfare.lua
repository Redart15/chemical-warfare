data:extend(
    {
        {
            type = "technology",
            icons = {
                {
                    icon = data.raw.technology["military-3"].icon,
                    tint = { r = 255 / 255, b = 0 / 255, g = 255 / 255, a = 0.3 },
                },
            },
            icon_mipmaps = 4,
            icon_size = 256,
            name = "chemical-warfare",
            -- order = "",
            prerequisites = {
                "chemical-science-pack",
                "military-3",
                "rocketry"
            },
            unit = {
                time = 30,
                count = 50,
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
                {
                    recipe = "hazmat-suit-armor",
                    type = "unlock-recipe"
                },
            }
        },
    }
)
