📦 Switch Numpad Enhanced

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
