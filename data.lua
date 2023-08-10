ROOT = "prototypes."


-- sorting done by item to easily disable them.

-- gasmask
local gasmask = ROOT .. "gasmask-armor."
require(gasmask .. "armor")
require(gasmask .. "recipe")
require(gasmask .. "technology")

-- posion-rocket
local poison_rocket = ROOT .. "poison-rocket."
require(poison_rocket .. "ammo")
require(poison_rocket .. "projectile")
require(poison_rocket .. "recipe")

-- hazmat-armor
local hazmat_armor = ROOT .. "hazmat-armor."
require(hazmat_armor .. "armor")
require(hazmat_armor .. "recipe")

-- technologies
local technologies = ROOT .. "technologies."
require(technologies .. "chemical-warfare")