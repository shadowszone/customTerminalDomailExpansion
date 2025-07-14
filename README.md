![Alt text](path.jpeg)


# 🧿🌀🌌🧠 customTerminalDomailExpansion

This tool adds an animated ASCII banner and optional images to your terminal using `figlet` and `jp2a`.

---

## 📦 Requirements

```bash
sudo apt install figlet jp2a
```

---

## 📂 Installation

### 🔧 Manual

1. Open your Zsh config file:
   ```bash
   nano ~/.zshrc
   ```

2. Paste the code below at the end of the file.

3. Save and reload Zsh:
   ```bash
   source ~/.zshrc
   ```

### 📜 Installer Script

Create and run `install-banner.sh`:



Make it executable and run:

```bash
chmod +x install-banner.sh
./install-banner.sh
```

---

## 🖥️ CLI Usage (Standalone Version)

Create `customTerminalDomainExpansion.sh`:



Make it executable:

```bash
chmod +x customTerminalDomainExpansion.sh
```

### Run with:
```bash
./customTerminalDomainExpansion.sh "Welcome Back GANG 'NEM" 0.0001 ~/Desktop/banner.jpg ~/Desktop/banner2.jpg
```

---

## 📸 Customize
- Change colors with ANSI escape codes (e.g., `\e[1;34m` for blue)
- Replace text and banners
- Add sounds or system info if needed

---

## 🧼 Uninstall

Just remove the function block from your `~/.zshrc`, or comment it out.

---

## 🛠️ License
MIT — free to use, modify, and vibe with.
