tellraw @s ["\n","\n","\n","\n","\n","\n","\n","\n","\n","\n"]
tellraw @s ["",{"text":"--- 給予、更改或扣除 FIA 金幣 ---","bold":true},"\n","給予、更改或扣除自己、特定玩家或所有玩家特定數量的 FIA 金幣，需要 /scoreboard 指令使用權限。","\n","給予指令：",{"text":"/scoreboard players add [玩家] fiacoin [數量]","color":"green","clickEvent":{"action":"suggest_command","value":"/scoreboard players add [玩家] fiacoin [數量]"},"hoverEvent":{"action":"show_text","contents":[{"text":"給予自己、特定玩家或所有玩家特定數量的 FIA 金幣，需要 /scoreboard 指令使用權限。","color":"red"}]}},"。","\n","更改指令：",{"text":"/scoreboard players set [玩家] fiacoin [數量]","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set [玩家] fiacoin [數量]"},"hoverEvent":{"action":"show_text","contents":[{"text":"更改自己、特定玩家或所有玩家特定數量的 FIA 金幣，需要 /scoreboard 指令使用權限。","color":"red"}]}},"。","\n","扣除指令：",{"text":"/scoreboard players remove [玩家] fiacoin [數量]","color":"red","clickEvent":{"action":"suggest_command","value":"/scoreboard players remove [玩家] fiacoin [數量]"},"hoverEvent":{"action":"show_text","contents":[{"text":"扣除自己、特定玩家或所有玩家特定數量的 FIA 金幣，需要 /scoreboard 指令使用權限。","color":"red"}]}},"。","\n",{"text":"[玩家]","color":"gold"},"：(玩家 ID)；@s 自己；@a 所有玩家；@p 最近玩家 (包括自己)；@r 隨機玩家。","\n",{"text":"[數量]","color":"gold"},"：應為整數，範圍從 0 到 2147483647 (給予或扣除)，或 -2147483648 到 2147483647 (更改)。"]