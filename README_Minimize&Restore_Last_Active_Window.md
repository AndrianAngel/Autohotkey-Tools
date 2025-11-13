🪟 Minimize & Restore Last Active Window (Win + Z / Win + Q)

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
