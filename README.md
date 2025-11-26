1 - 📦 Switch Numpad Enhanced

A productivity-focused AutoHotkey script that transforms your numpad into a task switcher. Press $ to minimize all windows, open the Ctrl+Alt+Tab switcher, and use NumPad1–9 to instantly jump to your desired app.

---

⚙️ Features

- Minimize All + Task Switcher: $ triggers Win+M followed by Ctrl+Alt+Tab, resetting window order and opening the persistent switcher.
- Numpad Navigation: NumPad1–9 selects apps from left to right in the switcher.
- Auto-disable: Numpad hotkeys deactivate after 10 seconds to avoid interference.
- Quick Exit: Alt+Escape cleanly exits the script.

---

🧠 How It Works

`autohotkey
$::                      ; Trigger key
Send, #{m}               ; Minimize all windows
Sleep, 100               ; Wait for minimize
Send, ^!{tab}            ; Open switcher
Send {Home}              ; Move to first app
SetTimer, EnableNumberKeys, -50
`

Each NumPadX sends {Right X-1}{Enter} to select the corresponding app.

---

⌨️ Hotkeys Summary

| Key         | Action                          |
|-------------|----------------------------------|
| $         | Minimize all + open switcher     |
| NumPad1   | Select leftmost app              |
| NumPad2–9 | Select app X positions to the right |
| Alt+Escape| Exit script                      |

---

🛠 Requirements

- Windows OS
- AutoHotkey v1.x installed

---

📁 File

- Switch Numpad Enhanced.ahk — main script


---

🧪 Notes

- Works best when task switcher order is predictable.
- You can customize the $ trigger or extend the logic for more apps.

- 🌹🌹🌹🌹🌹

- 🔽 [Download the full AutoHotkey Tools Pack](https://github.com/AndrianAngel/Autohotkey-Tools/releases/tag/Release2025_11_13)



---

2 - 🔒 Close All Windows With Confirmation (^F9)

This AutoHotkey script closes all open windows—except Rainmeter—after a confirmation dialog. It's a fast way to declutter your desktop without affecting essential overlays.

⚙️ Features

- Triggered by Ctrl + F9
- Displays a confirmation dialog before proceeding
- Skips Rainmeter windows (RainmeterMeterWindow class)
- Uses WinGet and WinClose for robust window handling

🧠 How It Works

1. Press Ctrl + F9
2. A message box appears:  
   "Are you sure you want to close all open windows? (Rainmeter windows will be skipped)"
3. If you click Yes, the script:
   - Retrieves all top-level window IDs
   - Filters out Rainmeter windows
   - Closes each remaining window by title

🛑 Safety Notes

- Rainmeter windows are explicitly excluded to preserve your desktop widgets.
- Windows are closed by title, which may not work for some apps with duplicate or empty titles.
- No undo—use with care!

🧪 Example Use Case

You're running multiple explorer windows, notepad instances, and browser tabs. One hotkey declutters everything—except your Rainmeter skin.



---


3 - 🪟 Minimize & Restore Last Active Window (Win + Z / Win + Q)

This AutoHotkey script lets you quickly minimize the current window and restore it later—ideal for toggling distractions or hiding sensitive content temporarily.

⚙️ Features

- Win + Z: Minimizes the currently active window
- Win + Q: Restores the most recently minimized window
- Maintains a stack of minimized windows for sequential restoration
- Skips already minimized windows to avoid redundant actions

🧠 How It Works

- Press Win + Z:
  - Captures the active window ID
  - Checks if it's already minimized
  - If not, minimizes it and stores its ID
- Press Win + Q:
  - Retrieves the last stored window ID
  - Restores it if it's still minimized

🧪 Example Use Case

You're switching between a confidential document and a browser. Hit Win + Z to hide the doc, then Win + Q to bring it back when ready—no need to hunt through the taskbar.

🛠️ Notes

- Uses WinExist("A") to track the active window
- Stores window IDs in a stack (lastWindows) for multi-level undo
- Restoration only works if the window is still minimized and hasn't been closed


---


4 - 🧹 Minimize & Restore All Windows (Win + S / Win + W)

This AutoHotkey script gives you full control over desktop clutter—instantly minimizing or restoring all windows except system trays and Rainmeter skins.

⚙️ Features

- Win + S: Minimizes all open windows
- Win + W: Restores all previously minimized windows
- Skips:
  - Taskbar (Shell_TrayWnd)
  - Secondary tray (Shell_SecondaryTrayWnd)
  - Rainmeter (RainmeterMeterWindow)
- Uses WinGet and WinMinimize / WinRestore for reliable window control

🧠 How It Works

- Both hotkeys retrieve a list of all top-level windows
- Filters out system tray and Rainmeter classes
- Applies WinMinimize or WinRestore to each remaining window

🧪 Example Use Case

You're about to present or record your screen. Hit Win + S to clear the desktop instantly. When you're done, Win + W brings everything back—no manual reopening needed.

🛠️ Notes

- Does not track which windows were minimized—restores all non-excluded windows
- Ideal for quick workspace resets or distraction-free moments


---



5 - 🖱️ NumPad Mouse Control (No ScrollLock Required)

Transform your NumPad into a full-featured mouse controller—no ScrollLock key needed. This script offers precise movement, button clicks, wheel scrolling, and speed tuning, all from your keyboard.

⚙️ Features

- Double-tap NumLock: Toggle mouse mode ON/OFF
- Mouse buttons:
  - NumPad0: Left click
  - NumPad5: Middle click
  - NumPadDot: Right click
  - NumPadDiv / NumPadMult: X1 / X2 click
- Mouse wheel:
  - NumPadSub: Scroll up
  - NumPadAdd: Scroll down
- Movement:
  - NumPad8/2/4/6: Up/Down/Left/Right
  - NumPad7/9/1/3: Diagonal movement
- Speed tuning (hold Ctrl):
  - Ctrl + NumPad7/1: Acceleration ±
  - Ctrl + NumPad8/2: Initial speed ±
  - Ctrl + NumPad9/3: Max speed ±
- Exit hotkey: Win + W

🧠 How It Works

- Detects double-tap of NumLock within 300ms to toggle mode
- Uses MouseMove, Click, and MouseClick for input simulation
- Speed and acceleration dynamically adjust during movement
- Tooltips show current speed settings when modified

🧪 Example Use Case

Your mouse dies mid-session. You double-tap NumLock and keep working—clicking, scrolling, and navigating entirely via NumPad.

🛠️ Notes

- NumLock must remain ON during mouse mode
- Designed for keyboards without ScrollLock
- TrayTip notifications confirm mode status


---


6 - 📦 Active Window Position By Numpad

A precision window management tool using Alt + Numpad shortcuts. Instantly reposition the active window to any part of the screen using intuitive key combinations.

---

⚙️ Features

- Directional Positioning: Move windows to top, bottom, left, right, corners, or center.
- Alt + Numpad Hotkeys: Fast, ergonomic control without dragging.
- Multi-monitor aware: Uses primary monitor’s work area (excludes taskbar).
- Preserves window size: Only changes position, not dimensions.

---

⌨️ Hotkey Map

| Hotkey         | Position        |
|----------------|-----------------|
| Alt + Numpad8| Top center      |
| Alt + Numpad2| Bottom center   |
| Alt + Numpad4| Left center     |
| Alt + Numpad6| Right center    |
| Alt + Numpad7| Top left        |
| Alt + Numpad9| Top right       |
| Alt + Numpad1| Bottom left     |
| Alt + Numpad3| Bottom right    |
| Alt + Numpad5| Center          |

---

🧠 How It Works

- Detects the active window (WinExist("A"))
- Retrieves screen work area via MonitorGetWorkArea
- Calculates target coordinates based on screen size and window dimensions
- Moves the window using WinMove(x, y)

---

🛠 Requirements

- Windows OS
- AutoHotkey v2.0 installed

---

📁 File

- Active Window Position By Numpad.ahk — main script


---


7 - 🖥️ VD Enhanced V4 — Custom Virtual Desktop Hotkeys

This script extends the functionality of Windows Virtual Desktops using intuitive NumPad-based hotkeys. It’s a modified version of FuPeiJiang’s VirtualDesktop.ahk library, tailored for faster access, window movement, and GUI-based onboarding.

⚙️ Features

- Switch desktops: LCtrl + NumPad [1–9]
- Move window & follow: LCtrl + Win + NumPad [1–9]
- Throw window (no follow): RCtrl + NumPad [1–9]
- Create desktop: Alt + NumPad+
- Remove desktop: Alt + NumPad-
- Pin/unpin window: NumPad0
- Getters:
  - Alt + F1: Current desktop
  - Alt + F2: Total desktops
  - F6: Desktop of current window

🧠 How It Works

- Uses the VD.ahk library to interface with Windows Virtual Desktop APIs
- GUI shows hotkey reference on launch
- Automatically ensures at least 3 desktops exist for NumPad mapping

📦 Dependencies

This script requires the original VD.ahk library from FuPeiJiang’s GitHub repository.  
Only the modified VD Enhanced V3.ahk is included here. To use it:

1. Download VD.ahk from the original repo
2. Place it in the same folder as this script
3. Run VD Enhanced V3.ahk to launch the GUI and enable hotkeys

📝 License

This modified version is published under the MIT License, in accordance with the original repository's terms.  
See LICENSE for details.


---


















  
