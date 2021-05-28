execute if entity @s[distance=..4] if block ~ ~ ~ minecraft:jukebox run function discs:play
execute if entity @s[distance=..4] if data block ~ ~ ~ RecordItem.tag.CustomModelData run summon area_effect_cloud ~ ~ ~ {Tags:["disc"],Duration:32767}
execute if entity @s[distance=..4] unless block ~ ~ ~ minecraft:jukebox positioned ^ ^ ^0.005 run function discs:inner/track