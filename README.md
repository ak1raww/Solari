# Solari

Solari is the installer for [Solarcord, a custom fork of Equicord](https://github.com/ak1raww/Solarcord), focused on moderation workflows, utilities and quality-of-life improvements.

Solari is a fork of [Equilotl](https://github.com/Equicord/Equilotl) (the official Equicord installer), modified specifically for syncing and installing Solarcord while keeping both official updates from Equicord and Solarcord.

![image](https://i.imgur.com/oHN41ss.png)

## Usage

### Windows

- [SolariCli.exe](https://github.com/ak1raww/Solari/releases/download/latest/SolariCli.exe) (recommended, easier)
- [Solari.exe](https://github.com/ak1raww/Solari/releases/download/latest/Solari.exe) (GUI)

### Linux

Check the [latest release](https://github.com/ak1raww/Solari/releases/latest) and pick the binary for your setup:

| Binary | Description |
|---|---|
| `Solari` | Universal GUI binary built with both X11 and Wayland support. |
| `Solari-wayland` | Optimized GUI installer for native Wayland sessions. |
| `Solari-x11` | Optimized GUI installer for pure X11 sessions. |
| `SolariCli-linux` | Terminal-based installer if you prefer running it from the command line. |

> [!IMPORTANT]
> Downloaded binaries do not have execution permissions by default. Run `chmod +x Solari*` before launching.

### MacOS

> [!WARNING]
> There is no official macOS build. Since we're not paying Apple to sign the executable, macOS users must [build from source](#building-from-source) instead.

## Building from source

### Prerequisites

You need to install the [Go programming language](https://go.dev/doc/install) and GCC, the GNU Compiler Collection (MinGW on Windows).

<details>
<summary>Additionally, if you're using Linux, you have to install some additional dependencies:</summary>

#### Base dependencies

```sh
apt install -y pkg-config libsdl2-dev libglx-dev libgl1-mesa-dev
dnf install pkg-config libGL-devel libXxf86vm-devel
```

#### X11 dependencies

```sh
apt install -y xorg-dev
dnf install libXcursor-devel libXi-devel libXinerama-devel libXrandr-devel
```

#### Wayland dependencies

```sh
apt install -y libwayland-dev libxkbcommon-dev wayland-protocols extra-cmake-modules
dnf install wayland-devel libxkbcommon-devel wayland-protocols-devel extra-cmake-modules
```

</details>

### Building

#### Install dependencies

```sh
go mod tidy
```

#### Build the GUI

##### Windows / Mac / Linux X11

```sh
go build
```

##### Linux Wayland

```sh
go build --tags wayland
```

#### Build the CLI

```sh
go build --tags cli
```

You might want to pass some flags to this command to get a better build. See [the GitHub workflow](https://github.com/ak1raww/Solari/blob/main/.github/workflows/release.yml) for what flags are used, or if you want more precise instructions.

## Credits

Solari would not exist without the work of the following projects and contributors.

- [Equilotl](https://github.com/Equicord/Equilotl)
- [Equicord](https://github.com/Equicord/Equicord)
- [Vencord](https://github.com/Vendicated/Vencord)

## Disclaimer

Discord is a trademark of Discord Inc. References to Discord are used solely for descriptive purposes and do not imply affiliation or endorsement.

Solari is an independent project and is not affiliated with Discord Inc., Vencord or Equicord.