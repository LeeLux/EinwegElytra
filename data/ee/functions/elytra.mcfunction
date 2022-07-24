tag @a[tag=!get_EinwegElytra,nbt=!{Inventory:[{Slot:102b,id:"minecraft:elytra"}]},distance=..16] add get_EinwegElytra
tag @a[tag=get_EinwegElytra,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] remove get_EinwegElytra

execute as @a[tag=get_EinwegElytra,nbt={Inventory:[{Slot:102b}]}] at @s run summon item ~ ~ ~ {PickupDelay:0,Tags:["chestreplaceitem"],Item:{id:"minecraft:blackstone",Count:1b}}
execute as @a[tag=get_EinwegElytra] at @s run data modify entity @e[type=item,limit=1,sort=nearest,tag=chestreplaceitem] Item merge from entity @p Inventory[{Slot:102b}]


execute as @e[type=item,tag=chestreplaceitem,nbt={Age:5s}] at @s run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 1 1
execute as @e[type=item,tag=chestreplaceitem,nbt={Age:5s}] at @s run tellraw @a[distance=..16] ["",{"text":"Die ","color":"red","bold":true},{"text":"EinwegElytra","color":"light_purple","bold":true},{"text":" het deine Brustplatte fallengelassen!","color":"red","bold":true}]
execute as @e[type=item,tag=chestreplaceitem,nbt={Age:5s}] at @s run title @p title {"text":"Deine  Brustplatte!","color":"red","bold":true,"italic":false}


##execute as @a[tag=get_elytra] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
##execute as @a[tag=get_elytra] at @s run particle minecraft:dust 0 1 1 1 ~ ~1 ~ 0.5 0.6 0.5 3 60 normal
replaceitem entity @a[tag=get_EinwegElytra] armor.chest elytra{display:{Name:'{"text":"EinwegElytra","color":"light_purple","italic":false}'},HideFlags:5,Unbreakable:1b,EinwegElytra:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1


execute as @a[distance=16.01..,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1
execute as @a[distance=16.01..,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] at @s run particle minecraft:dust 0 1 1 1 ~ ~1 ~ 0.5 0.6 0.5 3 60 normal
replaceitem entity @a[distance=16.01..,nbt={OnGround:1b,Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] armor.chest air

execute as @a[scores={EinwegElytyra=1..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] at @s anchored eyes run particle dust 0 1 1 1 ^1 ^ ^1 0.1 0.1 0.1 0 4
execute as @a[scores={EinwegElytyra=1..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] at @s anchored eyes run particle dust 0 1 1 1 ^-1 ^ ^1 0.1 0.1 0.1 0 4

execute as @a[scores={EinwegElytyra=1..},nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{Unbreakable:1b}}]}] at @s run effect give @s resistance 1 100 true

scoreboard players reset @a[scores={EinwegElytyra=1..}] EinwegElytyra