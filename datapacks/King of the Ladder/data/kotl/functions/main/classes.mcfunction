effect clear @a

# player 1 class selection
execute if block -30 3 -16 stone_button[powered=true] run tag @a[tag=player1] add exploder
execute if block -30 3 -16 stone_button[powered=true] run tag @a[tag=player1] remove hunter
execute if block -30 3 -16 stone_button[powered=true] run tag @a[tag=player1] remove speeder
execute if block -27 3 -16 stone_button[powered=true] run tag @a[tag=player1] remove exploder
execute if block -27 3 -16 stone_button[powered=true] run tag @a[tag=player1] remove hunter
execute if block -27 3 -16 stone_button[powered=true] run tag @a[tag=player1] add speeder
execute if block -24 3 -16 stone_button[powered=true] run tag @a[tag=player1] remove exploder
execute if block -24 3 -16 stone_button[powered=true] run tag @a[tag=player1] add hunter
execute if block -24 3 -16 stone_button[powered=true] run tag @a[tag=player1] remove speeder
execute if block -21 3 -16 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -21 3 -16 stone_button[powered=true] run setblock -21 3 -16 stone_button[facing=south]
execute if block -18 3 -16 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -18 3 -16 stone_button[powered=true] run setblock -18 3 -16 stone_button[facing=south]

# player 2 class selection
execute if block -8 3 -26 stone_button[powered=true] run tag @a[tag=player2] add exploder
execute if block -8 3 -26 stone_button[powered=true] run tag @a[tag=player2] remove hunter
execute if block -8 3 -26 stone_button[powered=true] run tag @a[tag=player2] remove speeder
execute if block -8 3 -29 stone_button[powered=true] run tag @a[tag=player2] remove exploder
execute if block -8 3 -29 stone_button[powered=true] run tag @a[tag=player2] remove hunter
execute if block -8 3 -29 stone_button[powered=true] run tag @a[tag=player2] add speeder
execute if block -8 3 -32 stone_button[powered=true] run tag @a[tag=player2] remove exploder
execute if block -8 3 -32 stone_button[powered=true] run tag @a[tag=player2] add hunter
execute if block -8 3 -32 stone_button[powered=true] run tag @a[tag=player2] remove speeder
execute if block -8 3 -35 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -8 3 -35 stone_button[powered=true] run setblock -8 3 -35 stone_button[facing=east]
execute if block -8 3 -38 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -8 3 -38 stone_button[powered=true] run setblock -8 3 -38 stone_button[facing=east]

# player 3 class selection
execute if block -18 3 -48 stone_button[powered=true] run tag @a[tag=player3] add exploder
execute if block -18 3 -48 stone_button[powered=true] run tag @a[tag=player3] remove hunter
execute if block -18 3 -48 stone_button[powered=true] run tag @a[tag=player3] remove speeder
execute if block -21 3 -48 stone_button[powered=true] run tag @a[tag=player3] remove exploder
execute if block -21 3 -48 stone_button[powered=true] run tag @a[tag=player3] remove hunter
execute if block -21 3 -48 stone_button[powered=true] run tag @a[tag=player3] add speeder
execute if block -24 3 -48 stone_button[powered=true] run tag @a[tag=player3] remove exploder
execute if block -24 3 -48 stone_button[powered=true] run tag @a[tag=player3] add hunter
execute if block -24 3 -48 stone_button[powered=true] run tag @a[tag=player3] remove speeder
execute if block -27 3 -48 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -27 3 -48 stone_button[powered=true] run setblock -27 3 -48 stone_button
execute if block -30 3 -48 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -30 3 -48 stone_button[powered=true] run setblock -30 3 -48 stone_button

# player 4 class selection
execute if block -40 3 -38 stone_button[powered=true] run tag @a[tag=player4] add exploder
execute if block -40 3 -38 stone_button[powered=true] run tag @a[tag=player4] remove hunter
execute if block -40 3 -38 stone_button[powered=true] run tag @a[tag=player4] remove speeder
execute if block -40 3 -35 stone_button[powered=true] run tag @a[tag=player4] remove exploder
execute if block -40 3 -35 stone_button[powered=true] run tag @a[tag=player4] remove hunter
execute if block -40 3 -35 stone_button[powered=true] run tag @a[tag=player4] add speeder
execute if block -40 3 -32 stone_button[powered=true] run tag @a[tag=player4] remove exploder
execute if block -40 3 -32 stone_button[powered=true] run tag @a[tag=player4] add hunter
execute if block -40 3 -32 stone_button[powered=true] run tag @a[tag=player4] remove speeder
execute if block -40 3 -29 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -40 3 -29 stone_button[powered=true] run setblock -40 3 -29 stone_button[facing=west]
execute if block -40 3 -26 stone_button[powered=true] run tellraw @p {"text":"Class not Available"}
execute if block -40 3 -26 stone_button[powered=true] run setblock -40 3 -26 stone_button[facing=west]

# armor
replaceitem entity @a[tag=speeder] armor.feet minecraft:leather_boots{display:{Name:'{"text":"Speeeedy Shoes","color":"green"}',color:1900291}} 1
replaceitem entity @a[tag=!speeder] armor.feet air
replaceitem entity @a[tag=exploder] armor.chest minecraft:leather_chestplate{display:{Name:'{"text":"Bombing Shirt","color":"green"}',color:9381952}} 1
replaceitem entity @a[tag=!exploder] armor.chest air
replaceitem entity @a[tag=hunter] armor.legs minecraft:leather_leggings{display:{Name:'{"text":"Hunting Pants","color":"green"}',color:6368273}} 1
replaceitem entity @a[tag=!hunter] armor.legs air

# slow_falling item
effect clear @a[tag=playing] slow_falling
effect give @a[nbt={Inventory:[{Slot:-106b,tag:{slow_falling:1}}]}] slow_falling 1000000 0 true

# jump_boost item
effect clear @a[tag=playing] jump_boost
effect give @a[tag=exploder,nbt={Inventory:[{Slot:-106b,tag:{jump_boost:1}}]}] jump_boost 1000000 2 true
effect give @a[tag=hunter,nbt={Inventory:[{Slot:-106b,tag:{jump_boost:1}}]}] jump_boost 1000000 2 true
effect give @a[tag=speeder,nbt={Inventory:[{Slot:-106b,tag:{jump_boost:1}}]}] jump_boost 1000000 4 true

# tnt item
execute as @e[type=endermite] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2}
execute as @e[type=endermite] run kill @s

# obsidian bomb
execute as @e[type=silverfish] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace obsidian
execute as @e[type=silverfish] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:0}
execute as @e[type=silverfish] run kill @s

# coal -- explode top
execute unless score timer time matches -1 run scoreboard players add timer coal_time 1
execute if score timer coal_time matches 500 run tellraw @a {"text":"Exploding Coal has been given!","color":"red"}
execute if score timer coal_time matches 500 run replaceitem entity @a[tag=playing] hotbar.6 minecraft:coal{explode:1,display:{Name:'{"text":"Explode the Top","color":"red","italic":false}',Lore:['{"text":"Throw to explode the top!","color":"green","italic":false}']}} 1
execute if score timer coal_time matches 500 run scoreboard players set timer coal_time 0
execute as @e[type=item,nbt={Item:{tag:{explode:1}}}] as @e[tag=top] at @s run summon minecraft:creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0}
execute as @e[type=item,nbt={Item:{tag:{explode:1}}}] as @e[tag=top] at @s run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1}]}}}}
execute as @e[type=item,nbt={Item:{tag:{explode:1}}}] run kill @s

# ability switch
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye",tag:{slow_falling:1}}}] run tag @s remove slow_falling
execute as @a[nbt={SelectedItem:{id:"minecraft:light_gray_dye",tag:{slow_falling:1}}}] run tag @s add jump_boost
execute as @a[nbt={SelectedItem:{id:"minecraft:green_dye",tag:{jump_boost:1}}}] run tag @s remove jump_boost
execute as @a[nbt={SelectedItem:{id:"minecraft:green_dye",tag:{jump_boost:1}}}] run tag @s add slow_falling

# arrow switch
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] run tag @p remove normal_arrow
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow"}}] run tag @p add weakness_arrow
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:weakness"}}}] run tag @p add slowness_arrow
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:weakness"}}}] run tag @p remove weakness_arrow
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:slowness"}}}] run tag @p add normal_arrow
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",tag:{Potion:"minecraft:slowness"}}}] run tag @p remove slowness_arrow


# exploder
replaceitem entity @a[tag=playing,tag=exploder] hotbar.0 minecraft:stick{display:{Name:'{"text":"Knockback Stick","color":"gold","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:1s}]} 1
replaceitem entity @a[tag=playing,tag=exploder] hotbar.1 minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
replaceitem entity @a[tag=playing,tag=exploder] hotbar.2 minecraft:diamond_axe{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]} 1
replaceitem entity @a[tag=playing,tag=exploder] hotbar.3 endermite_spawn_egg{display:{Name:'{"text":"TNT Ball","color":"green","italic":false}',Lore:['{"text":"ROCKET JUMP!!!","color":"red","bold":true,"italic":false}']}}
replaceitem entity @a[tag=playing,tag=exploder] hotbar.4 tnt 1
replaceitem entity @a[tag=playing,tag=exploder] hotbar.5 flint_and_steel
replaceitem entity @a[tag=playing,tag=exploder,nbt=!{Inventory:[{Slot:6b,id:"minecraft:coal"}]}] hotbar.6 black_dye{display:{Name:'{"text":"No Exploding Coal","color":"red","italic":false}'}}
replaceitem entity @a[tag=playing,tag=exploder] hotbar.8 silverfish_spawn_egg{display:{Name:'{"text":"Obsidian Bomb","color":"green","italic":false}',Lore:['{"text":"Blow up obsidian in a 3x3 area!","color":"red","bold":true,"italic":false}']}}
replaceitem entity @a[tag=playing,tag=exploder] hotbar.7 oak_planks

effect give @a[tag=exploder] resistance 1000000 0 true

# speeder
replaceitem entity @a[tag=playing,tag=speeder] hotbar.0 minecraft:stick{display:{Name:'{"text":"Knockback Stick","color":"gold","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:1s}]} 1
replaceitem entity @a[tag=playing,tag=speeder] hotbar.1 minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
replaceitem entity @a[tag=playing,tag=speeder] hotbar.2 minecraft:diamond_axe{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]} 1
replaceitem entity @a[tag=playing,tag=speeder] hotbar.3 ender_pearl
replaceitem entity @a[tag=playing,tag=speeder] hotbar.4 ladder
replaceitem entity @a[tag=playing,tag=speeder] hotbar.5 lava_bucket
replaceitem entity @a[tag=playing,tag=speeder,nbt=!{Inventory:[{Slot:6b,id:"minecraft:coal"}]}] hotbar.6 black_dye{display:{Name:'{"text":"No Exploding Coal","color":"red","italic":false}'}}
replaceitem entity @a[tag=playing,tag=speeder] hotbar.7 oak_planks
replaceitem entity @a[tag=playing,tag=speeder] hotbar.8 water_bucket 

effect give @a[tag=speeder] speed 1000000 2 true

# hunter
replaceitem entity @a[tag=playing,tag=hunter] hotbar.0 minecraft:diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:3s}]} 1
replaceitem entity @a[tag=playing,tag=hunter] hotbar.1 bow{Enchantments:[{id:"minecraft:power",lvl:3s}]}
replaceitem entity @a[tag=playing,tag=hunter] hotbar.2 minecraft:diamond_axe{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]} 1
replaceitem entity @a[tag=playing,tag=hunter,tag=normal_arrow] hotbar.3 arrow{display:{Lore:['[{"text":"Throw to gain: ","color":"red","italic":false},{"text":"Arrow of Weakness","color":"green","italic":false}]']}}
replaceitem entity @a[tag=playing,tag=hunter,tag=weakness_arrow] hotbar.3 tipped_arrow{Potion:"minecraft:weakness",display:{Lore:['[{"text":"Throw to gain: ","color":"red","italic":false},{"text":"Arrow of Slowness","color":"green","italic":false}]']}}
replaceitem entity @a[tag=playing,tag=hunter,tag=slowness_arrow] hotbar.3 tipped_arrow{Potion:"minecraft:slowness",display:{Lore:['[{"text":"Throw to gain: ","color":"red","italic":false},{"text":"Arrow","color":"green","italic":false}]']}}
replaceitem entity @a[tag=playing,tag=hunter] hotbar.4 ladder
replaceitem entity @a[tag=playing,tag=hunter] hotbar.5 lava_bucket
replaceitem entity @a[tag=playing,tag=hunter,nbt=!{Inventory:[{Slot:6b,id:"minecraft:coal"}]}] hotbar.6 black_dye{display:{Name:'{"text":"No Exploding Coal","color":"red","italic":false}'}}
replaceitem entity @a[tag=playing,tag=hunter] hotbar.7 oak_planks
replaceitem entity @a[tag=playing,tag=hunter] hotbar.8 water_bucket 

effect give @a[tag=hunter] strength 1000000 1 true


# abilities
replaceitem entity @a[tag=playing,tag=slow_falling] weapon.offhand minecraft:light_gray_dye{display:{Name:'{"text":"Slow Falling","color":"green","italic":false}',Lore:['[{"text":"Throw to change to: ","color":"gray","italic":false},{"text":"Jump Boost","color":"green","italic":false}]']},slow_falling:1} 1
replaceitem entity @a[tag=playing,tag=jump_boost] weapon.offhand minecraft:green_dye{display:{Name:'{"text":"Jump Boost","color":"green","italic":false}',Lore:['[{"text":"Throw to change to: ","color":"gray","italic":false},{"text":"Slow Falling","color":"green","italic":false}]']},jump_boost:1} 1



# hotbar items
#replaceitem entity @a[tag=playing,tag=slow_falling] weapon.offhand minecraft:light_gray_dye{display:{Name:'{"text":"Slow Falling","color":"green","italic":false}',Lore:['[{"text":"Throw to change to: ","color":"gray","italic":false},{"text":"Jump Boost","color":"green","italic":false}]']},slow_falling:1} 1
#replaceitem entity @a[tag=playing,tag=jump_boost] weapon.offhand minecraft:green_dye{display:{Name:'{"text":"Jump Boost","color":"green","italic":false}',Lore:['[{"text":"Throw to change to: ","color":"gray","italic":false},{"text":"Slow Falling","color":"green","italic":false}]']},jump_boost:1} 1
#replaceitem entity @a[tag=playing] hotbar.8 water_bucket 
#replaceitem entity @a[tag=playing] hotbar.7 oak_planks
#replaceitem entity @a[tag=playing] hotbar.6 ladder
#replaceitem entity @a[tag=playing] hotbar.5 lava_bucket
#replaceitem entity @a[tag=playing,nbt=!{Inventory:[{Slot:4b,id:"minecraft:coal"}]}] hotbar.4 black_dye{display:{Name:'{"text":"No Exploding Coal","color":"red","italic":false}'}}
#replaceitem entity @a[tag=playing] hotbar.3 endermite_spawn_egg{display:{Name:'{"text":"TNT Ball","color":"green","italic":false}',Lore:['{"text":"ROCKET JUMP!!!","color":"red","bold":true,"italic":false}']}}
#replaceitem entity @a[tag=playing] hotbar.2 minecraft:diamond_axe{Enchantments:[{id:"minecraft:efficiency",lvl:5s}]} 1
#replaceitem entity @a[tag=playing] hotbar.1 minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
#replaceitem entity @a[tag=playing] hotbar.0 minecraft:stick{display:{Name:'{"text":"Knockback Stick","color":"gold","italic":false}'},Enchantments:[{id:"minecraft:knockback",lvl:1s}]} 1
