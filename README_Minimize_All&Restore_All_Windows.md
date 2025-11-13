🧹 Minimize & Restore All Windows (Win + S / Win + W)

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
