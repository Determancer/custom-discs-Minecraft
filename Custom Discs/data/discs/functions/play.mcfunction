# Example
# copy the following two command under the existing ones:
# execute if data block ~ ~ ~ RecordItem{id:"minecraft:music_disc_far",tag:{CustomModelData:$}} run playsound $ record @a
# execute if data block ~ ~ ~ RecordItem{id:"minecraft:music_disc_far",tag:{CustomModelData:$}} run function discs:custom/$
# "$" means your custom content: the value of CustomModelData (you will need to get a music disc with such a CustomModelData to play the sounds from your resource pack), the sound you are going to play (you need to put it in the resouce pack and register it in sounds.json), and the title function you write in the discs/functions/custom folder.
# the command to get a music disc with ctm value "$": /give @p minecraft:music_disc_far{CustomModelData:$}
# remember to replace "$" with a integer.
# "#" is a comment sign, so delete it after copying. (Don't do the same to these comments! But you completely delete this instruction part)

execute if data block ~ ~ ~ RecordItem{id:"minecraft:music_disc_far",tag:{CustomModelData:1}} run playsound record.example record @a
execute if data block ~ ~ ~ RecordItem{id:"minecraft:music_disc_far",tag:{CustomModelData:1}} run function discs:custom/title