# "WoW: Worldforge" Custom UI

This repository contains a customized user interface for the World of Warcraft 3.3.5a client, designed specifically for my private server "WoW: Worldforge".

## Overview

The majority of the modifications are in `AccountLogin.lua` and `AccountLogin.xml`, which control the login screen appearance. I've redesigned the UI to better match the theme and style of my private server.

This UI is heavily customized for my specific use case and isn't really intended for general adoption, but you're welcome to look through my changes and comments to see how I modified the standard WoW UI files.

- **Currently**: Trying to figure out how to create an .m2 model file for an animated background of the login screen. As of now, I'm using the dark iron dwarf background which seems to work best (I was able to achieve this using this [awesome mod](https://www.nexusmods.com/worldofwarcraft/mods/852?tab=description)). Here's what the login screen currently looks like:


https://github.com/user-attachments/assets/a7c39004-e72b-4738-87c8-d1aaac2d0375



## Research Notes:
### Important Concept: _Strata_

"Strata" are essentially layers but for frames (not to be confused with the `<layer>` tag that can be embedded into frames). For example, if you have a frame with its `frameStrata` attribute equal to "MEDIUM" and another frame's equal to "HIGH", the frame who's "frameStrata" attribute is set to "HIGH" will appear on top of the one set to "MEDIUM"
Strata Options (in ascending order):
- "BACKGROUND"
- "LOW"
- "MEDIUM"
- "HIGH"
- "DIALOG"
- "FULLSCREEN"
- "FULLSCREEN_DIALOG"
- "TOOLTIP"

![image](https://github.com/user-attachments/assets/777ef384-3332-452f-8726-8d52b951e158)
<div align="center"><em>Found this awesome visual online ^</em></div>
<div align="center">https://wowpedia.fandom.com/wiki/Frame_Strata?file=Frame_Strata.png</div>
