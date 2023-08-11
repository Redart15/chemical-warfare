ROOT = "prototypes."


-- sorting done by item to easily disable them.

local bitter_breathing = ROOT .. "bitter-breathing."
require(bitter_breathing .. "change-breathing")

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
require(poison_rocket .. "technology")

-- hazmat-armor
local hazmat_armor = ROOT .. "hazmat-armor."
require(hazmat_armor .. "armor")
require(hazmat_armor .. "recipe")
require(hazmat_armor .. "technology")
