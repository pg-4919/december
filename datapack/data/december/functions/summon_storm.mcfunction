execute as @e[type=item,nbt={Item:{id:"minecraft:nautilus_shell"}}] if block ~ ~ ~ minecraft:soul_fire run tag @s add SummonStorm
execute as @e[type=item,tag=SummonStorm] run weather thunder
execute as @e[type=item,tag=SummonStorm] run kill @s
