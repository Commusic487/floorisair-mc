tellraw @s ["\n","\n","\n","\n","\n","\n","\n","\n","\n","\n"]

tellraw @s ["\n",{"text":"--- 遊戲外觀選項 ---","bold":true},"\n","\n","此處所有選項需要 /function 指令使用權限。","\n"]

# 主題
execute if score theme value matches 0 run tellraw @s ["","主題 ",{"text":"[地獄石英]","bold":true,"underlined":true,"color":"white"}," ",{"text":"[橡木]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/theme/oak"},"hoverEvent":{"action":"show_text","contents":[{"text":"將主題設為橡木，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[紫珀]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/theme/purpur"},"hoverEvent":{"action":"show_text","contents":[{"text":"將主題設為紫珀，需要 /function 指令使用權限。","color":"red"}]}}]
execute if score theme value matches 1 run tellraw @s ["","主題 ",{"text":"[地獄石英]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/theme/quartz"},"hoverEvent":{"action":"show_text","contents":[{"text":"將主題設為地獄石英，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[橡木]","bold":true,"underlined":true,"color":"gold"}," ",{"text":"[紫珀]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/theme/purpur"},"hoverEvent":{"action":"show_text","contents":[{"text":"將主題設為紫珀，需要 /function 指令使用權限。","color":"red"}]}}]
execute if score theme value matches 2 run tellraw @s ["","主題 ",{"text":"[地獄石英]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/theme/quartz"},"hoverEvent":{"action":"show_text","contents":[{"text":"將主題設為地獄石英，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[橡木]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/theme/oak"},"hoverEvent":{"action":"show_text","contents":[{"text":"將主題設為橡木，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[紫珀]","bold":true,"underlined":true,"color":"light_purple"}]

# 地板紋理
execute if score floor_texture value matches 0 run tellraw @s ["","地板紋理 ",{"text":"[羊毛]","bold":true,"underlined":true,"color":"green"}," ",{"text":"[混凝土]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/floor_texture/concrete"},"hoverEvent":{"action":"show_text","contents":[{"text":"將地板紋理設為混凝土，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[染色玻璃]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/floor_texture/stained_glass"},"hoverEvent":{"action":"show_text","contents":[{"text":"將地板紋理設為染色玻璃，需要 /function 指令使用權限。","color":"red"},"\n",{"text":"警告：將地板紋理設為染色玻璃可能在遊戲時造成視覺疲勞，請慎用。","color":"red"}]}}]
execute if score floor_texture value matches 1 run tellraw @s ["","地板紋理 ",{"text":"[羊毛]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/floor_texture/wool"},"hoverEvent":{"action":"show_text","contents":[{"text":"將地板紋理設為羊毛，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[混凝土]","bold":true,"underlined":true,"color":"green"}," ",{"text":"[染色玻璃]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/floor_texture/stained_glass"},"hoverEvent":{"action":"show_text","contents":[{"text":"將地板紋理設為染色玻璃，需要 /function 指令使用權限。","color":"red"},"\n",{"text":"警告：將地板紋理設為染色玻璃可能在遊戲時造成視覺疲勞，請慎用。","color":"red"}]}}]
execute if score floor_texture value matches 2 run tellraw @s ["","地板紋理 ",{"text":"[羊毛]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/floor_texture/wool"},"hoverEvent":{"action":"show_text","contents":[{"text":"將地板紋理設為羊毛，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[混凝土]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/floor_texture/concrete"},"hoverEvent":{"action":"show_text","contents":[{"text":"將地板紋理設為混凝土，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[染色玻璃]","bold":true,"underlined":true,"color":"green"}]

# 死亡方塊
execute if score dead_block value matches 0 run tellraw @s ["","死亡方塊 ",{"text":"[岩漿塊]","bold":true,"underlined":true,"color":"gold"}," ",{"text":"[黑色混凝土]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/dead_block/black_concrete"},"hoverEvent":{"action":"show_text","contents":[{"text":"將死亡方塊設為黑色混凝土，需要 /function 指令使用權限。","color":"red"}]}}]
execute if score dead_block value matches 1 run tellraw @s ["","死亡方塊 ",{"text":"[岩漿塊]","color":"gray","clickEvent":{"action":"run_command","value":"/function floorisair:appearance_settings/dead_block/magma_block"},"hoverEvent":{"action":"show_text","contents":[{"text":"將死亡方塊設為岩漿塊，需要 /function 指令使用權限。","color":"red"}]}}," ",{"text":"[黑色混凝土]","bold":true,"underlined":true,"color":"black"}]

execute if score floor_texture value matches 2 run tellraw @s [{"text":"警告：將地板紋理設為染色玻璃可能在遊戲時造成視覺疲勞，請慎用。","color":"red"}]

tellraw @s ["\n"]

playsound minecraft:block.dispenser.fail voice @s 0 100 0 2147483647 1 1