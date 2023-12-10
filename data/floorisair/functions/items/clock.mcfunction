# 道具 7 時間暫停！
execute if score game_status value matches 1 if score all_items value matches 0 as @a unless score @s Item7_status matches 1 run item replace entity @s container.6 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}
execute if score game_status value matches 1 as @a[team=player] unless score @s clock_cd matches 1..1700 if score clock_use value matches 1..100 run item replace entity @s container.6 with minecraft:barrier{display:{Name:'{"text":"道具不可用","italic":false}'}}

execute if score game_status value matches 1 as @a[team=player] if score @s clock_cd matches 1..1700 run item replace entity @s container.6 with minecraft:structure_void{display:{Name:'{"text":"道具冷卻中⋯⋯","italic":false}'}} 1

execute if score game_status value matches 1 if score all_items value matches 0 if score clock_use value matches 0 run item replace entity @a[scores={Item7_status=1,clock_cd=0},team=player] container.6 with minecraft:clock{display:{Name:'{"text":"時間暫停！[丟棄使用]","italic":false}'}}
execute if score game_status value matches 1 if score all_items value matches 1 if score clock_use value matches 0 run item replace entity @a[scores={clock_cd=0},team=player] container.6 with minecraft:clock{display:{Name:'{"text":"時間暫停！[丟棄使用]","italic":false}'}}

execute if score game_status value matches 1 as @a at @s if entity @e[distance=..1.4,nbt={Item:{id: "minecraft:clock", tag: {display: {Name: '{"text":"時間暫停！[丟棄使用]","italic":false}'}}}},type=minecraft:item] run tag @s add clock_user
execute if score game_status value matches 1 as @a at @s if entity @e[distance=..1.4,nbt={Item:{id: "minecraft:clock", tag: {display: {Name: '{"text":"時間暫停！[丟棄使用]","italic":false}'}}}},type=minecraft:item] run scoreboard players set clock_use value 100
execute if score game_status value matches 1 as @a[tag=clock_user] at @s run kill @e[type=item,nbt={Item:{id: "minecraft:clock", tag: {display: {Name: '{"text":"時間暫停！[丟棄使用]","italic":false}'}}}}, distance=..1.4]
execute if score clock_use value matches 100 as @a[tag=clock_user] run tellraw @a ["",{"text":"[道具]","color":"aqua","bold":true}," ",{"selector":"@s"}," 使用了 時間暫停！"]
execute if score clock_use value matches 1..100 run scoreboard players remove clock_use value 1
execute as @a[tag=clock_user] run scoreboard players set @s clock_cd 1700
execute if score game_status value matches 1 as @a[team=player] if score @s clock_cd matches 1..1700 run scoreboard players remove @s clock_cd 1
execute if score clock_use value matches 1..100 as @a[team=player,tag=!clock_user] at @s unless entity @e[distance=..0.5,tag=clock_teleporter,type=minecraft:marker] run summon minecraft:marker ~ ~ ~ {Tags:["clock_teleporter"]}
execute if score clock_use value matches 100 as @a[team=player,tag=!clock_user] at @s run teleport @e[limit=1,sort=nearest,tag=clock_teleporter,type=minecraft:marker] @s
execute if score clock_use value matches 1..100 as @a[team=player,tag=!clock_user] at @s run teleport @s @e[limit=1,sort=nearest,tag=clock_teleporter,type=minecraft:marker]
execute unless score clock_use value matches 1..100 run kill @e[tag=clock_teleporter,type=minecraft:marker]

execute unless score clock_use value matches 1..100 run tag @a[tag=clock_user] remove clock_user