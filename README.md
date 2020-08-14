# Auto-EQ

A collection of Everquest scripts to automate some tasks. The scripts leverage AutoHotkey which sends keyboard commands to the Everquest client.

This is still a work in progress and has very basic functionality right now

## Setup

1. [Install Autohotkey](https://www.autohotkey.com/)

2. [Install git](https://git-scm.com/download/win) (*use default options*)

3. Install Auto-EQ
   1. Create a folder or go to a directory where you'd like to install Auto-EQ
   2. Right click in that directory and select **Git Bash Here** ![Git Bash Here](https://i.imgur.com/2rczvyb.png)
   3. In the bash terminal that opened, type in `git clone https://github.com/orangebread/auto-eq.git` ![git clone](https://i.imgur.com/zQ6og5a.png)
   4. Aaaand ya done! You should have something similar to this ![fuck your face](https://i.imgur.com/EzJ3H1l.png)

4. **IMPORTANT:** Once in awhile you will want to open up the bash terminal and type in `git pull` in the bash terminal to update the scripts.

## How to use

**Double click the desired script** in the auto-eq directory located in the *scripts* folder (ex. monk_scripts.ahk).

If you want to see what each script executes, right click on the script and open it in a text editor like Notepad. **NOTE: You will need to modify the character names in the scripts for some of these to perform correctly**

### General
`Shift + Ctrl + X` - _Stop/pause script._ Press again to resume script. Works across all scripts.

### Monk

`Shift + Ctrl + 1` - _Auto Assist_ the target defined in the script

### Shaman

`Shift + Ctrl + 1` - _Infinite Cannibalize_ (I fucking love this one)

`Shift + Ctrl + 2` - _Auto Avatar._ Will automatically cycle through a list you've defined and buff each person as Ferine Avatar comes off cooldown. Spell gem for Ferine Avatar should be in Slot 1. Caster will provide a 15 second warning to cast so remain still.

### Bard

`Shift + Ctrl + 1` - _Auto Assist_ the target defined in the script

`Shift + Ctrl + 2` - _Symphony of the Battle + Auto Assist + Melody_ (Assuming you have the item required -- ex. Songblade of the Eternal) and resumes melodies and auto assist. **NOTE:** You will need to have your desired melody on _**hotkey 3**_

## References
https://www.autohotkey.com/docs/Tutorial.htm

You can use AutoHotkey's documentation to modify any of this as you see fit. 
