clear @s minecraft:ender_pearl
give @s minecraft:ender_pearl 2
tellraw @s {"text":"You can only have a maximum of two ender pearls.", "color":"red"}
tellraw @s {"text":"Extra ender pearls have been deleted from your inventory.", "color":"red"}