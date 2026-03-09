# CopyPath

A lightweight macOS Finder extension that adds a **"Copy Path"** option to your right-click context menu. Select any file or folder, right-click, and instantly copy its full path to your clipboard.

![macOS](https://img.shields.io/badge/macOS-13.0%2B-blue?logo=apple&logoColor=white)
![Swift](https://img.shields.io/badge/Swift-5.9-orange?logo=swift&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

---

## Why?

macOS doesn't offer a native "Copy Path" option in Finder. You can Option-click a file and choose "Copy as Pathname," but that's buried and easy to miss. CopyPath puts it front and center — right where you'd expect it.

- One click to copy a file or folder path
- Works everywhere in Finder — desktop, sidebar, any directory
- Supports multiple selection (paths are newline-separated)
- Zero background processes — runs only as a Finder extension

---

## Install

### Homebrew (recommended)

```bash
brew install --cask engagendy/tap/copypath
```

### Manual

1. Download `CopyPath-1.0.0.zip` from the [latest release](https://github.com/Engagendy/CopyPath/releases/latest)
2. Unzip and move `CopyPath.app` to `/Applications`

---

## Setup

After installing, you need to enable the Finder extension:

1. Open **CopyPath.app** once
2. Go to **System Settings → Privacy & Security → Extensions → Added Extensions**
3. Find **CopyPath** and enable the Finder extension toggle
4. Right-click any file or folder in Finder — you'll see **Copy Path** in the menu

---

## Build from Source

**Requirements:** Xcode 15+ and [XcodeGen](https://github.com/yonaskolb/XcodeGen)

```bash
git clone https://github.com/Engagendy/CopyPath.git
cd CopyPath
xcodegen generate
open CopyPath.xcodeproj
```

Build and run with **Cmd + R** in Xcode.

---

## How It Works

CopyPath uses Apple's [Finder Sync Extension](https://developer.apple.com/documentation/findersync) API. The extension registers itself to monitor all volumes and injects a context menu item into Finder's right-click menu. When triggered, it reads the selected file URLs and copies their paths to the system clipboard.

The host app is a minimal SwiftUI wrapper that exists solely to deliver the extension — it has no background processes or menu bar icons.

---

## Uninstall

```bash
brew uninstall copypath
```

Or delete `CopyPath.app` from `/Applications` and remove the extension in System Settings.

---

## License

MIT
