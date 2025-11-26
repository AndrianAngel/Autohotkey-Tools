🖥️ VD Enhanced V4 — Custom Virtual Desktop Hotkeys

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
