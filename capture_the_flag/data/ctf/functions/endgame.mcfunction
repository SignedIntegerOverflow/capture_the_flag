execute if score #blue Points < #red Points run title @a subtitle [{"text":"Red team won the game! They had a total of "},{"score":{"name":"#red","objective":"Points"}},{"text":" points, while the blue team had a total of "},{"score":{"name":"#blue","objective":"Points"}},{"text":" points."}]
execute if score #blue Points > #red Points run title @a subtitle [{"text":"Blue team won the game! They had a total of "},{"score":{"name":"#blue","objective":"Points"}},{"text":" points, while the red team had a total of "},{"score":{"name":"#red","objective":"Points"}},{"text":" points."}]
execute if score #blue Points = #red Points run function ctf:tiebreak
execute as @a run tp @s 0 200 0
execute as @a run gamemode spectator @s
execute as @a at @a run playsound minecraft:ctf_end master @a ~ ~ ~ 1 1