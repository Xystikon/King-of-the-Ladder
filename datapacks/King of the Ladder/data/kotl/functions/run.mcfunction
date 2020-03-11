# clear
clear @a

# tag players 1-4
execute as erlnys run function kotl:player_search

# gamemode
gamemode adventure @a

# remove tags
tag @a remove playing
tag @a remove exploder
tag @a remove speeder
tag @a remove hunter
tag @a remove normal_arrow
tag @a remove weakness_arrow
tag @a remove slowness_arrow
tag @a remove jump_boost
tag @a remove slow_falling

# tp
tp @a[tag=player1] @e[limit=1,tag=player1_spawn]
tp @a[tag=player2] @e[limit=1,tag=player2_spawn]
tp @a[tag=player3] @e[limit=1,tag=player3_spawn]
tp @a[tag=player4] @e[limit=1,tag=player4_spawn]

scoreboard players set @a run 0