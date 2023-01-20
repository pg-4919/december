# Thanks to MadCat for his datapack at https://github.com/MadCatHoG/ShulkerRespawn-DataPack/

execute in the_end as @a[gamemode=!spectator] at @s run execute as @e[type=minecraft:enderman] run execute as @s at @s unless block ~ ~-1 ~ #december:city_blocks unless entity @e[type=shulker,distance=0..2] run tag @s add NoShulker
execute as @e[type=minecraft:enderman,tag=!NoShulker] at @s run summon minecraft:shulker ~ ~ ~ {Color:16}
execute as @e[type=minecraft:enderman,tag=!NoShulker] at @s run playsound entity.shulker.teleport hostile @a ~ ~ ~
execute as @e[type=minecraft:enderman,tag=!NoShulker] at @s run teleport @s ~ -999 ~
execute as @e[type=minecraft:enderman,tag=!NoShulker] at @s run tag @s add NoShulker

advancement revoke @a only december:respawn_end_mid
advancement revoke @a only december:respawn_end_high
