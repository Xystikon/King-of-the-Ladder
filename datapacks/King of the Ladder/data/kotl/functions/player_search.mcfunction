scoreboard players set player_count options 0

tag @a remove player1
tag @a remove player2
tag @a remove player3
tag @a remove player4

execute as @r run tag @s add player1
execute as @r[tag=!player1] run tag @s add player2
execute as @r[tag=!player1,tag=!player2] run tag @s add player3
execute as @r[tag=!player1,tag=!player2,tag=!player3] run tag @s add player4

tellraw @a [{"text":"Player 1: "},{"selector":"@a[tag=player1]"}]
tellraw @a [{"text":"Player 2: "},{"selector":"@a[tag=player2]"}]
tellraw @a [{"text":"Player 3: "},{"selector":"@a[tag=player3]"}]
tellraw @a [{"text":"Player 4: "},{"selector":"@a[tag=player4]"}]

execute if entity @a[tag=player1] run scoreboard players add player_count options 1
execute if entity @a[tag=player2] run scoreboard players add player_count options 1
execute if entity @a[tag=player3] run scoreboard players add player_count options 1
execute if entity @a[tag=player4] run scoreboard players add player_count options 1