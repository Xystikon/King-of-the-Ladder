title @a title [{"text":"Time's Up!"}]
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ .5 1 1
gamemode spectator @a
tp @a @e[limit=1,sort=nearest,tag=spawn]
bossbar remove kotl:time
scoreboard players set timer time -1
scoreboard objectives remove Score
scoreboard players set end_timer time 0