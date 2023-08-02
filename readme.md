# Chemical Warfare
[![made-with-python](https://img.shields.io/badge/Made%20with-Lua-13008F.svg)](https://www.lua.org/)
 [![GitHub release](https://img.shields.io/github/release/Redart15/chemical-warfare)](https://GitHub.com/Redart15/chemical-warfare/releases/)\
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Redart15/chemical-warfare/graphs/commit-activity)
[![GitHub latest commit](https://badgen.net/github/last-commit/Redart15/chemical-warfare)](https://GitHub.com/Redart15/chemical-warfare/commit/)

## Introduction
This is a mod for the game [Factorio](https://store.steampowered.com/app/427520/Factorio/).\
Factorio is a real-time strategy game where players must build and manage complex automated factories.

## Features
Adds new way to combat biter using chemistry:
- New:
    - Acid capsule, on impact creates cloud of poison
    - Gas mask, reduces damage done by poison
- Updated
    - Modular, power and power-mk2 armor requires gasmask but provides posion resistance
    - adds Gasmask to "" technology

## Structure
📦 mod\
 ┣  📦data/data_updates/data-final\
 ┃  ┣ 📂items\
 ┃  ┣ 📂entities\
 ┃  ┣ 📂technology\
 ┃  ┗ 📂other\
 ┣  📦graphics\
 ┃  ┣ 📂icon\
 ┃  ┣ 📂sprites\
 ┃  ┗ 📂other\
 ┗ 📦local

|             dir | meaning            |
|----------------:|--------------------|
|      items/icon | not placeble items |
| entities/sprite | placable items     |
|           other | everything else    |



## Todo
- [ ] generate a simple strukture graph
- [ ] unlock gasmask if modular armor in a given safe is unlocked
