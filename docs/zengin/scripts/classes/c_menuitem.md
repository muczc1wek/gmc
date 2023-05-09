---
title: C_MENU_ITEM
---

# C_MENU_ITEM Daedalus class

!!! example "Acknowledgment"
    Heavily inspired by the amazing documentation site [Gothic library](http://www.gothic-library.ru)

Class `C_Menu_Item` describes the elements of the game menu (sliders, checkboxes, buttons, etc.) .
## Class definition
Class definition as it is defined in [`Scripts/System/_intern/Menu.d`](https://github.com/VaanaCZ/gothic-2-addon-scripts/blob/Unified-EN/_work/Data/Scripts/System/_intern/Menu.d) script file. 

??? "C_Menu_Item Daedalus class"
    class C_Menu_Item
    {
        var     string  fontName;                   // Menu item font
        var     string  text[10];                   // Interface element text
        var     string  backPic;                    // Background image of menu item
        var     string  alphaMode;                  // Menu item transparency blending mode 
        var     int     alpha;                      // Transparency of the menu item
        var     int     type;                       // Interface element type
        var     int     onSelAction[5];             // An array of commands to execute when a menu item is selected
        var     string  onSelAction_S[5];           // Arguments for commands specified in the onSelAction
        var     string  onChgSetOption;             // Gothic.ini file parameter that will be modified by this menu item
        var     string  onChgSetOptionSection;      // Section of the Gothic.ini file in which the parameter to be changed is located
        var     func    onEventAction[10];          // Calling the desired function by constant identifier
        var     int     posx;                       // The top left point of the menu on the screen horizontally (X-axis)
        var     int     posy;                       // The top left point of the menu on the screen vertically (Y-axis)
        var     int     dimx;                       // Width of the menu item
        var     int     dimy;                       // Height of the menu item
        var     float   sizeStartScale;             // The initial size of the element (Not used)
        var     int     flags;                      // Menu item flags
        var     float   openDelayTime;              // The delay before opening the element (Not used)
        var     float   openDuration;               // Opening time (Not used)
        var     float   userFloat [4];              // Numerical settings of the interface element
        var     string  userString[4];              // String settings of the interface element
        var     int     frameSizeX;                 // Indent text inside the frame along the x-axis
        var     int     frameSizeY;                 // Indent text inside the frame along the Y axis
        var     string  hideIfOptionSectionSet;     // The section of the Gothic.ini file in which the option is located, the value of which determines the display of this menu item
        var     string  hideIfOptionSet;            // The Gothic.ini parameter of the file, on the value of which the display of this menu item depends
        var     int     hideOnValue;                // The value of the Gothic.ini file parameter at which this interface element is not displayed
    }; 


## Class members

| Variable                          | Type   | Description                                                                         |
|-----------------------------------|--------|-------------------------------------------------------------------------------------|
| [fontName](#fontname)               | string | Menu item font                                                               |
| [text](#text)           | string | The text inside the menu item                                    |
| [backPic](#backpic)                     | string    | Background image of menu item                  |
| [alphaMode](#alphamode)                     | string    | Menu item transparency blending mode                    |
| [alpha](#alpha)                     | int    | The transparency of the menu item                                                   |
| [type](#type)                     | int    | Interface element type                                                  |
| [onSelAction](#onselaction)                   | int    | An array of commands to execute when a menu item is selected                                        |
| [onSelAction_S](#onselaction_s)         | string | Arguments for commands specified in the onSelAction                                                             |


| [eventTimerMSec](#eventtimermsec) | int    | The timer that triggered the event in seconds                                       |
| [items](#items)                   | string | Menu items                                                                          |
| [flags](#flags)                   | int    | Menu flags                                                                          |
| [defaultOutGame](#defaultoutgame) | int    | Menu item highlighted by default when the game is not running                       |
| [defaultInGame](#defaultingame)   | int    | Menu item highlighted by default when the game is running                           |