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







  
