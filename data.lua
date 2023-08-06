ROOT = "prototypes."


-- sorting done by item to easily disable them.

-- gasmask
local gasmask = ROOT .. "gasmask-armor."
require(gasmask .. "armor")
require(gasmask .. "recipe")


local base = ROOT .. "base-mod."
require(base .. "poison-res-armor") -- adds poison resistance
require(base .. "add-mil3-2power-armor") -- adds technology to power armour
require(base .. "add-gasmask-2mil3")

-- acid-capsule
local acid_capsule = ROOT .. "acid-capsule."
require(acid_capsule .. "capsule")
require(acid_capsule .. "projectile")
require(acid_capsule .. "recipe")
require(acid_capsule .. "stream")

-- added fire to used by player
local fire = ROOT .. "acid-fire."
require(fire .. "acid-splash-player-fire")

-- acidthrower-ammo
local acidthrower = ROOT .. "acidthrower-ammo."
require(acidthrower .. "ammo")
require(acidthrower .. "recipe")
require(acidthrower .. "sticker")
require(acidthrower .. "stream")

-- posion-rocket
local poison_rocket = ROOT .. "poison-rocket."
require(poison_rocket .. "ammo")
require(poison_rocket .. "projectile")
require(poison_rocket .. "recipe")








