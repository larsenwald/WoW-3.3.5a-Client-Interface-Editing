# "WoW: Worldforge" Custom UI

This repository contains a customized user interface for the World of Warcraft 3.3.5a client, designed specifically for my private server "WoW: Worldforge".

## Overview

The majority of the modifications are in `AccountLogin.lua` and `AccountLogin.xml`, which control the login screen appearance. I've redesigned the UI to better match the theme and style of my private server.

This UI is heavily customized for my specific use case and isn't really intended for general adoption, but you're welcome to look through my changes and comments to see how I modified the standard WoW UI files.

## Notes:

Let's talk Strata. "Strata" are essentially layers but for frames (not to be confused with the '<layer>' tag that can be embedded into frames). For example, if you have a frame with its "frameStrata" attribute set to "MEDIUM" and another frame's set to "HIGH", the frame who's "frameStrata" attribute is set to "HIGH" will be on top of the one set to "MEDIUM"
Strata Options (in ascending order):
"BACKGROUND"
"LOW"
"MEDIUM"
"HIGH"
"DIALOG"
"FULLSCREEN"
"FULLSCREEN_DIALOG"
"TOOLTIP"
