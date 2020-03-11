# class select
execute if score player_count options matches 4 if block -24 3 -8 lever[powered=false] if block 0 3 -32 lever[powered=false] if block -24 3 -56 lever[powered=false] if block -48 3 -32 lever[powered=false] run function kotl:main/start_timer
execute if score player_count options matches 3 if block -24 3 -8 lever[powered=false] if block 0 3 -32 lever[powered=false] if block -24 3 -56 lever[powered=false] run function kotl:main/start_timer
execute if score player_count options matches 2 if block -24 3 -8 lever[powered=false] if block 0 3 -32 lever[powered=false] run function kotl:main/start_timer
execute if score player_count options matches 1 if block -24 3 -8 lever[powered=false] run function kotl:main/start_timer

# constant player effects
effect give @a saturation 100000 1 true

# kill all items
kill @e[type=item]

# on/off blocks
execute if block -24 3 -8 lever[powered=false] run fill -23 2 -7 -25 4 -7 green_concrete
execute if block -24 3 -8 lever[powered=true] run fill -23 2 -7 -25 4 -7 red_concrete
execute if block 0 3 -32 lever[powered=false] run fill 1 2 -33 1 4 -31 green_concrete
execute if block 0 3 -32 lever[powered=true] run fill 1 2 -33 1 4 -31 red_concrete
execute if block -24 3 -56 lever[powered=false] run fill -23 2 -57 -25 4 -57 green_concrete
execute if block -24 3 -56 lever[powered=true] run fill -23 2 -57 -25 4 -57 red_concrete
execute if block -48 3 -32 lever[powered=false] run fill -49 2 -31 -49 4 -33 green_concrete
execute if block -48 3 -32 lever[powered=true] run fill -49 2 -31 -49 4 -33 red_concrete



# bossbar
execute store result bossbar kotl:time max run scoreboard players get time_limit options
execute store result bossbar kotl:time value run scoreboard players get timer time
execute unless score timer time matches -1 run scoreboard players add timer time 1
execute as @a if score timer time >= time_limit options run function kotl:main/out_of_time

# enable triggers
scoreboard players enable erlnys start
scoreboard players enable @a[tag=playing] leave
scoreboard players enable erlnys end
scoreboard players enable @a[tag=!playing] join
scoreboard players enable erlnys run

# particle
execute as @e[tag=top] at @s run particle firework ~ ~.2 ~ .3 0 .3 0 1

# actionbar -- tell top player
title @a actionbar {"text":"No Player at the Top","color":"dark_aqua"}
execute at @e[tag=top] as @p[distance=..1.5] run title @a actionbar [{"text":"Player at the Top: ","color":"dark_aqua","italic":false},{"selector":"@s","color":"dark_purple","bold":true,"italic":false}]

# teams
team join Playing @a[tag=playing]
team join Spectating @a[tag=!playing]

# score system
execute at @e[tag=top] as @a[distance=..1.5] run scoreboard players add @s score 1
execute as @a[scores={score=20}] run scoreboard players add @s Score 1
execute as @a[scores={score=20}] run scoreboard players set @s score 0

# end
execute as @a if score @s Score = max_score options run function kotl:main/end
execute as @a if score @s end matches 1.. run function kotl:main/end

# start system
execute as @a[scores={start=1..}] run function kotl:main/start_timer

# join and leave system
execute as @a[scores={leave=1..}] run function kotl:main/leave
execute as @a[scores={join=1..}] run function kotl:main/join

# run
execute as @a if score @s run matches 1.. run function kotl:run

# play again
execute if score end_timer time matches 0.. run scoreboard players add end_timer time 1
execute if score end_timer time matches 200.. run function kotl:run
execute if score end_timer time matches 200.. run scoreboard players set end_timer time -1
