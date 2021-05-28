execute as @a[scores={custom_disc=1..}] at @s anchored eyes run function discs:inner/track
execute as @a[scores={custom_disc=1..}] run scoreboard players set @s custom_disc 0

execute as @e[type=area_effect_cloud,tag=disc] at @s unless block ~ ~ ~ jukebox[has_record=true] run stopsound @a[distance=..10] record
execute as @e[type=area_effect_cloud,tag=disc] at @s unless block ~ ~ ~ jukebox[has_record=true] run kill @s
execute as @e[type=area_effect_cloud,tag=disc] at @s if block ~ ~ ~ jukebox[has_record=true] run stopsound @a[distance=..10] record music_disc.far