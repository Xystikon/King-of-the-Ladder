title @a title [{"selector":"@s"},{"text":" has won!","color":"white"}]
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ .5 1 1
gamemode spectator @a
tp @a[tag=playing] @e[limit=1,sort=nearest,tag=spawn]
clear @a[tag=playing]
bossbar remove kotl:time
scoreboard players set timer time -1
scoreboard objectives remove Score
scoreboard players set @a end 0
scoreboard players set end_timer time 0