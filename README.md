# BSPWM Dotfiles
My Personal Dotfiles. Based on [justTOBBI](https://github.com/justTOBBI/dotfiles) config. It features a simple but pretty polybar, windows with rounded corners, a cool firefox startpage and a Neovim configuration that turns it into a fully-featured IDE, among other stuff. Note that this config is prepared for its use with two displays, but it can perfectly be used with just one out of the box, and even more with some tweaking.
## Table of Content
 - [Installation](#Installation)
 - [Keybinds](#Keydbinds)
 - [Screenshots](#Screenshots)
 - [Thanks to](#Thanks-To)

|        My         |      Is       |
|------------------:|---------------|
|                 OS| Arch Linux    |
|                 WM| bspwm         |
|         Lockscreen| slimlock      |
|           Terminal| kitty         |
|              Shell| zsh           |
|             Prompt| Powerlevel10k |
|             Editor| Neovim        |
|            Browser| Firefox       |
| Local Music Player| ncmpcpp       |
|Online Music Player| spotify       |

# Installation
**NOTE: THE FOLLOWING COMMANDS ONLY WORK IF YOU USE ARCH LINUX. IF NOT, YOU WILL HAVE TO BUILD SOME PACKAGES BY YOURSELF** \
To install this dotfiles, first run this command in order to install paru, the AUR helper we'll be using to all the necessary programs:
    
    git clone https://aur.archlinux.org/paru-bin.git
    cd paru-bin
    makepkg -si
   
Once paru is installed, run the installation script.
       
    ./install.sh

Once you've run the script, you're good to go! Just remember to set the color scheme to dracula using something like lxappearance and then reboot.
# Keybinds
Win stands for the Windows Key, A.K.A the Meta Key
|Key            |Action           |
|:--------------|-----------------|
|Win + Shift + Q| Close App       |
|Win + S        |Toggle Study Mode|
|Win + Enter    |Kitty(Terminal)  |
|Win + R        |App Menu         |
|Win + F        |Firefox          |
|Win + D        |Discord          |
|Win + N        |Network Menu     |
|Win + M        |Music Menu       |
|Win + E        |Ranger           |
|Win + W        |WhatsApp         |
|Win + Z        |Zathura          |

###Window Management
|Key                   |Action                                 |
|:---------------------|---------------------------------------|
|Win + Shift + S       |Window Floating                        |
|Win + Shift + T       |Window Tiling                          |
|Win + Shift + F       |Fullscreen                             |
|Win + Shift + Ctrl + T|Window Pseudo-tiling                   |
|Win + G               |Swap selected and biggest window       |
|Win + Alt + Arrow     |Move floating window in arrow direction|
### Other important keybinds
|Key            |Action                |
|:--------------|----------------------|
|Win + L        |Lockscreen            |
|Win + Esc      |Reload sxhkd(Keybinds)|
|Win + Ctrl + R |Reload bspwm and sxhkd|
|Win + Ctrl + Q |Quit bspwm            |

# Screenshots
The left screen has those black borders because my second screen has a different resolution than the first one.
![Screenshot1](/screenshots/screenshot1.png)
![Screenshot2](/screenshots/screenshot2.png)
![Screenshot3](/screenshots/screenshot3.png)

# Thanks to
 - [justTOBBI](https://github.com/justTOBBI) who actually made most of my bspwm configs.
 - [S4vitar](https://youtube.com/s4vitar) for inspiring me to give bspwm and p10k a try.
 - [r/unixporn](https://reddit.com/r/unixporn) for inspiring me to rice my desktop.
 - [u/TheLerny](https://reddit.com/u/TheLerny) for making one of the coolest startpages I've ever seen.
