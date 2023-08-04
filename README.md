# arx-mod-potion-guard

Arx Fatalis mod to prevent accidental waste of potions when player health or
mana is full.

![screenshot](screenshot.png?raw=true "screenshot")

**Compatible with
[Arx Libertatis Mod Manager](https://github.com/fredlllll/ArxLibertatisModManager)**

## Why?

Imagine being in a tense combat situation, you're low on health and you try to
use the hotkeys to drink a health potion. But instead of `H` (default hotkey
for drinking health potion) you accidentally press `G` (default hotkey for
drinkin mana potion) and you waste a valuable mana potion. This mod will
override the default scripts of health and mana potions so that if your stats
are full you won't use up any of those potions when drinking them.

## Requirements

[Arx Libertatis](https://arx-libertatis.org/) 1.3 because of the `^player_mana`
and `^player_maxmana` variables.

Dev snapshot for 1.3 containing the necessary variables:
https://arx-libertatis.org/files/snapshots/arx-libertatis-1.3-dev-2023-06-24/
