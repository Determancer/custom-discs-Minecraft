This datapack aims to help players play their own musics by jukebox in vanilla Minecraft.
The datapack needs the resource pack to work. All the musics should be put in the resource pack, and correctly registered in sounds.json

Let's start with the following steps:
- Unzip the pack:
  - put "Custom Discs.zip" in .minecraft/saves/<your world name>/datapacks. You may also unzip "Custom Discs.zip" and put the folder in the same location for further convenience.
  - put "Custom Discs Resource Pack" in .minecraft/resourcepacks. You can also unzip "Custom Discs Resource Pack" and put the folder in the same location for further convenience.
- Get into the world, then press ESC->Open to LAN->Allow Cheats: ON->Start LAN World
- input command /reload
- use command /give @p music_disc_far{CustomModelData:1}
- put the disc in the jukebox, you will find that this is a music out of the range of vanilla disc musics (it's from https://freepd.com/epic.php, a website for sharing free music under CC license)

Now you have sucessfully install the modpack, it's time to load your own music now:

1. Preparing the music and modifying sounds.json
- Prepare the music you want to to play in Minecraft, make sure to convert it into a .ogg file. What's more, it's suggested to make it a single track audio file, otherwise its volume may not decline with the distance from the jukebox in game
- Open Custom Discs Resource Pack, put the music file in assets/minecraft/sounds
- Open sounds.json in assets/minecraft, you will see code structures like this:
    "record.new": {
        "sounds": [
            {
                "name": "new",
                "stream": true
            }
        ]
    }
  among these codes, "record.new" is the namespace ID of the music, you will need it when changing the file "play.mcfunction", "new" is the name of the music file in the resource pack (they must be the same to work properly). 
  "record.example" is the music you hear at the begining, "record.new" is for you to load your own music. You can add more of them with the same format, but don't forget the "," after every part. (Visual Studio Code may help you find this kind of mistakes)

2. Modifying play.mcfunction
- Open Custom Discs
- Find "play.mcfunction" in /data/discs/functions, open it
- There is instructions about how to add commands, just follow and do it

3. Play custom music in Minecraft
- Just as the begining, use command /give @p music_disc_far{CustomModelData:1} to get special disc for playing your own musics.
- Now have fun with it!

After all this, you can write .mcfunction files in Custom Discs\data\discs\functions\custom and modify the corresponding commands in play.mcfunction. This is advanced 