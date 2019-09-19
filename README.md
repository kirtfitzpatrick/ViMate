# ViMate

This is outdated code but here for reference at this stage. It was the best I could do without spending weeks neck deep in class-dump (again) writing tons of code that would be obsolete as soon as TextMate V2.0 comes out. Since TextMate 2 is open source it is my hope to build a new vi emulator natively to the app.

I'll warn you that things get funky near the end of file and the end of line and word movement is a crap-shoot without rhyme or reason. There is nothing I can do about this until I'm able to implement my own movement functions (i.e. until TextMate V2.0).

## Commands Implemented
## Movement
- h left
- j down
- k up
- l right
- w word forward
- b word backward
- e end of word forward
- 0 beginning of line
- $ end of line
- gg top of document
- G end of document
## Insert
- i insert
- I insert at beginning of line (doesn't respect indenting)
- a append
- A append to end of line
- o insert line below (doesn't respect indenting)
- O insert line above (doesn't respect indenting)
- c+(?) change
- cc change line
- C change to end of line
- Cut Copy Paste
- d+(?) cut
- dd cut line
- D cut to end of line
- y+(?) copy
- yy copy line
- x cut character forward (or cut selection)
- X cut character backward (or cut selection)
- p paste after or below (or replace selection)
- P paste before or above (or replace selection)
## Scrolling
- Ctrl+u scroll half page up (broken)
- Ctrl+d scroll half page down (broken)
- Ctrl+b scroll full page up
- Ctrl+f scroll full page down
- Ctrl+y scroll line up
- Ctrl+e scroll line down
## Visual Mode
- V highlight line
- v visual mode
## Repeat
- 1,2,3...  repeat next command (buggy)
