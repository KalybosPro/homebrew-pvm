# 🐘✨ PVM – PHP Version Manager

Manage multiple PHP versions per project with ease – inspired by FVM for Flutter.

[![GitHub release](https://img.shields.io/github/v/release/KalybosPro/pvm)](https://github.com/KalybosPro/pvm/releases)
[![MIT License](https://img.shields.io/github/license/KalybosPro/pvm)](LICENSE)

---

## 🚀 Features

✅ Simulated PHP version installation
✅ Use different PHP versions per project via `.pvmrc`
✅ Execute PHP commands with the selected version (`pvm exec`)
✅ List installed PHP versions
✅ Works on **macOS, Linux, and Windows** (via Node.js)

---

## 📦 Installation

### 🔧 Prerequisites

* [Node.js](https://nodejs.org) (for CLI runtime)
* [Homebrew](https://brew.sh) (macOS/Linux)

---

### 💻 Install via Homebrew

```bash
brew tap KalybosPro/pvm
brew install pvm
```

---

### 📝 Alternative: install globally via npm (if published)

```bash
npm install -g @kalybospro/pvm
```

*(Replace with your actual NPM package name if you publish there.)*

---

## ⚡ Usage

### 🔍 View help

```bash
pvm help
```

---

### 🔧 Install a PHP version

```bash
pvm install 8.1.0
```

*This simulates installing PHP 8.1.0 in `~/.pvm/versions/8.1.0`. Extend this function to download and compile real binaries later.*

---

### 📌 Set PHP version for a project

```bash
pvm use 8.1.0
```

Creates a `.pvmrc` file in your project root specifying the PHP version to use.

---

### 🔧 Show current project PHP version

```bash
pvm current
```

---

### 💻 Execute a PHP command with the selected version

```bash
pvm exec php -v
```

Runs the PHP command using the version specified in `.pvmrc`.

---

### 📜 List installed PHP versions

```bash
pvm list
```

---