# WRSR Steam Locomotive Conversion
This script converts steam locomotives available on the Steam workshop that are currently using diesel as fuel to use coal. This script should only be used if you have Early Start DLC installed.

This script searches for known steam locomotive which do not specify coal as their fuel type. It does not search for assets marked as broken by their authors.

## How to use
1) Download this script by clicking **Code** > **Download ZIP**.
2) Unzip the content of the file to your Steam workshop folder (usually found in C:\Program Files (x86)\Steam\steamapps\workshop\content\784150)
3) Double-click **steamassets.bat** and follow the on-screen instructions.

## How does the script work?
This script will search for known steam locomotive assets (by ID) using diesel as fuel write the necessary changes to your assets. This script does not make any backups. Please make your own backups or verify file integrity if you wish to restore the original files.

If an asset is updated after you have run this script and its fuel type remains diesel, the changes made by this script will overwritten. In that case, you must rerun this script to change fuel type to coal.

Specifically, the script looks for the following code in script.ini for the assets listed below:
> $TRAINGROUP_LOCOMOTIVE

And replaces it with:
> $TRAINGROUP_LOCOMOTIVE_STEAM

## List of assets to be modified
### 1910 Steam Locomotive 'Le Fusilier'
By Calderiaän | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2674360834)

### Union Pacific 4000 "Big Boy"
By Lex713 | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2573140862)

### Early-Mid XX century european locomotives pack
By Jutland | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2876219291)
*Please note: These models have been incorporated in the base Early Start DLC, and you may unsubscribe from this.*

### 9P Steam Industrial Locomotive
By Dozed | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=3586048211)

### Generic late XIX century 4-4-0 Steam Locomotive (П class)
By Dozed | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=3267422791)

### OKz32
By Jutland | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2875857701)

### Type 159 Narrow-gauge Locomotive
By Dozed | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=3583890375)

### Паравоз Ов
By Rikenbacker | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=3033562291)

### Generic late XIX century 0-6-0 Steam Shunter (Type 62)
By Dozed | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=3268770065)

### Early Train/Trackbuilder - B&O 1832
By Delta | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2986962155)

### BR (LNER) A4 Pacific [FIXED]
By 安藤 - [original](https://steamcommunity.com/sharedfiles/filedetails/?id=2491660594) by Synergistic Liability | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2989148124)

### SY1000 [FIXED]
By 安藤 - [original](https://steamcommunity.com/sharedfiles/filedetails/?id=2409199116) by Alexander | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2989148199)

### SY1000
By Alexander | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2409199116)

### BB Class [FIXED]
By 安藤 - [original](https://steamcommunity.com/sharedfiles/filedetails/?id=2425298852) by Alexander | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2989148023)

### BB Class
By Alexander | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2425298852)

### GWR 5700 Pannier Tank Steam Locomotive
By Monotone | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2703756131)

### Thomas the Tank Engine
By Monotone | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2703756131)

### No704 [FIXED]
By 安藤 - [original](https://steamcommunity.com/sharedfiles/filedetails/?id=2417113009) by Alexander | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2989148267)

### No704
By Alexander | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2417113009)

### BR (LNER) N2 Tank Engine
By Synergistic Liability | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2583625846)

### Peckett 0-4-0 Industrial Steam Locomotive
By Monotone | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=2730593884)

### BR52
By Fiend | [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=1915382717)


