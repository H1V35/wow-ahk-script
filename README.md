# WoW AutoHotkey Spam Script

This repository contains an [AutoHotkey](https://www.autohotkey.com/) script designed to quickly enable and disable automatic key spam while playing **World of Warcraft**.

## Features

- **Toggle On/Off With a Single Key**: Press the configured key (default: `F1`) once to start the automatic spam of held-down keys, and press it again to stop.
- **Window-Dependent Execution**: The script only sends keystrokes if the active window is **World of Warcraft**. If you switch out of the game, the spam halts until WoW is active again.
- **Optional On-Screen Status Indicator**: A small, always-on-top GUI appears at the top of the screen, displaying the current status (`ON` or `OFF`), as well as the activation key and spam interval.
- **Adjustable Interval**: Change the delay between each key press to customize the spam cadence (default 100ms).
- **Multiple Keys Supported**: The script monitors several keys (`1,2,3,4,5,TAB,q,e,r,t,s,f,g,z,x,c,v,b`). While any are held down, it continuously simulates rapid key presses.

## Requirements

- [AutoHotkey](https://www.autohotkey.com/) (version 1.1.33.09 or newer recommended).
- Windows 10 or later.
- World of Warcraft.

## Usage

1. **Install AutoHotkey**:  
   Download and install AutoHotkey from its official website.

2. **Clone or Download the Repository**:  
   Click the "Code" button and select "Download ZIP". Extract the `.ahk` file to your preferred location.  
   Or use git:  
   ```bash
   git clone https://github.com/your_username/WoW_AHK_Script.git
   ```
3. **Run the Script**:
   Double-click the .ahk file.
   The script will run in the background and display a small window at the top of your screen indicating the macro’s status.

4. **In-Game Use**:

   - Launch World of Warcraft.
   - Press F1 (or the configured key) to activate the spam.
   - Hold down the desired key (e.g., 1). The script will send that key every 100ms while it’s held down.
   - To stop the spam, press F1 again.

## Customization

- **Activation Key**:
   Default: (`F1`)
   Change:
   ```ahk
   activationkey := "F1"
   ```

   to something else, e.g.
   ```ahk
   activationkey := "F2"
   ```

- **Interval (ms)**:
   Default: (`100`)
   Change:
   ```ahk
   runms := "100"
   ```

   to another value, e.g. (`50`) or (`200`).

- **Show/Hide the On-Screen Display**:
   Default: true
   Change:
   ```ahk
   monitor := true
   ```
   to false if you don’t want the on-screen status.

- **Adjusting the GUI Position**:
Inside the script’s (`Guisize`): section, change (`y0`) to another value (e.g. (`y50`)) to move the window down by 50 pixels.

## Additional Notes

- The script simulates rapid individual key presses rather than holding the key down.
