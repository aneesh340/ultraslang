# USLang Build Instructions

## Prerequisites

You need **Rust** installed on your system.

### Install Rust

Visit: https://www.rust-lang.org/tools/install

Windows users can run the installer or use:

```powershell
# Using Windows Package Manager (if available)
winget install Rust.Rust-MSVC

# Or download installer from https://rustup.rs/
```

### Verify Installation

```bash
rustc --version
cargo --version
```

## Build USLang

### 1. Navigate to the project directory

```powershell
cd uslang
```

### 2. Build in release mode (optimized)

```powershell
cargo build --release
```

The compiled executable will normally be at:
```
target/release/us.exe
```

If your toolchain uses the GNU Windows target, build with:

```powershell
cargo build --release --target x86_64-pc-windows-gnu
```

Then the executable will be at:
```
target\x86_64-pc-windows-gnu\release\us.exe
```

### 3. Run the interpreter

```powershell
# File mode - execute a .us program
.\target\release\us.exe examples\hello.us

# If using the GNU target:
.\target\x86_64-pc-windows-gnu\release\us.exe examples\hello.us

# REPL mode - interactive shell
.\target\release\us.exe
# or
.\target\x86_64-pc-windows-gnu\release\us.exe
```

## Quick Test

After building, try:

```bash
# Run hello world
./target/release/us.exe examples/hello.us

# Expected output:
# Hello
# World
```

## Build Options

### Debug Build (faster compilation, slower runtime)

```bash
cargo build
./target/debug/us.exe examples/hello.us
```

### Release Build (slower compilation, optimized runtime)

```bash
cargo build --release
./target/release/us.exe examples/hello.us
```

## Creating the us.exe Executable

After building, copy the executable to a convenient location:

```bash
# Copy to current directory
copy target/release/us.exe .

# Or add to PATH for global access
```

## Creating the Installer

To create a simple installer for USLang, run the install.bat script as administrator:

```powershell
# Right-click install.bat and "Run as administrator"
```

This will copy the executable and documentation to `%USERPROFILE%\USLang` and add it to the system PATH. You can then use `us` from any directory in any session without special commands.

For a more advanced installer, you can use the installer.iss file with Inno Setup (if installed).

## Troubleshooting

### "error: linker 'link.exe' not found"

You need Visual C++ Build Tools. Download from:
https://visualstudio.microsoft.com/visual-cpp-build-tools/

### "cargo not found"

Ensure Rust is properly installed and added to PATH.

In PowerShell, you can temporarily add Cargo to your path for the current session:

```powershell
$env:PATH += ";$env:USERPROFILE\.cargo\bin"
```

Then verify:

```powershell
rustc --version
cargo --version
```

If you need a permanent fix, reinstall Rust or re-open PowerShell after installation.

If the command still fails, run:

```powershell
rustup update
```

### Dependencies

The project depends on:
- **regex** v1 - for pattern matching (automatically downloaded by cargo)

---

See README.md for language documentation.
