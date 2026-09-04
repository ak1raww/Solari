# Solari

Solari is the installer for [Solarcord, a custom fork of Equicord](https://github.com/ak1raww/Solarcord), focused on moderation workflows, utilities and quality-of-life improvements.

Solari is a fork of [Equilotl](https://github.com/Equicord/Equilotl) (the official Equicord installer), modified specifically for syncing and installing Solarcord while keeping both official updates from Equicord and Solarcord.

![image](https://i.imgur.com/QSjFAkr.png)

## Usage

### Windows

| | X64 | ARM64 |
| --- | --- | --- |
| GUI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari.exe) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-arm64.exe) |
| CLI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli.exe) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli-arm64.exe) |

### MacOS

> [!WARNING]
> There is no official signed macOS build. Since we're not paying Apple to sign the executable, macOS users must [build from source](#building-from-source) instead.

| | Universal | X64 | ARM64 |
| --- | --- | --- | --- |
| GUI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari.dmg) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-x64.dmg) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-arm64.dmg) |
| CLI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli-universal) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli-x64) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli-arm64) |

The CLI builds are plain binaries, so run `chmod +x <file>` after downloading.

### Linux

| | X64 | ARM64 |
| --- | --- | --- |
| Combined GUI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-arm64) |
| X11 GUI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-x11) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-x11-arm64) |
| Wayland GUI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-wayland) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/Solari-wayland-arm64) |
| CLI | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli-linux) | [Download](https://github.com/ak1raww/Solari/releases/latest/download/SolariCli-linux-arm64) |

> [!IMPORTANT]
> Downloaded Linux binaries do not have execution permissions by default. Run `chmod +x Solari*` before launching.

## Building from source

### Prerequisites

You need to install the [Go programming language](https://go.dev/doc/install) and GCC, the GNU Compiler Collection (MinGW on Windows).

<details>
<summary>Additionally, if you're using Linux, you have to install some additional dependencies:</summary>

#### Base dependencies

```sh
apt install -y pkg-config libsdl2-dev libglx-dev libgl1-mesa-dev
dnf install pkg-config libGL-devel libXxf86vm-devel
X11 dependencies   
Bash
apt install -y xorg-dev
dnf install libXcursor-devel libXi-devel libXinerama-devel libXrandr-devel
Wayland dependencies   
Bash
apt install -y libwayland-dev libxkbcommon-dev wayland-protocols extra-cmake-modules
dnf install wayland-devel libxkbcommon-devel wayland-protocols-devel extra-cmake-modules
Building   
Install dependencies   
Bash
go mod tidy
Build the GUI   
Windows / Mac / Linux X11   
Bash
make GUI=1
Linux Wayland
Bash
make GUI=1 WAYLAND=1
Build the CLI
Bash
go build --tags cli
You might want to pass some flags to this command to get a better build. See the GitHub workflow for what flags are used, or if you want more precise instructions.

Credits
Solari would not exist without the work of the following projects and contributors.

Equilotl

Equicord

Vencord

Disclaimer
Discord is a trademark of Discord Inc. References to Discord are used solely for descriptive purposes and do not imply affiliation or endorsement.

Solari is an independent project and is not affiliated with Discord Inc., Vencord or Equicord.