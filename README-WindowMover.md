📦 Active Window Position By Numpad

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
