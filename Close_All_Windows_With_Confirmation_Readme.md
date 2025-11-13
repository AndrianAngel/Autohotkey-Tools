🔒 Close All Windows With Confirmation (^F9)

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
