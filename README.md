<h1 align="center">CColor</h1>

<h3 align="center"> Matrix like effect in your terminal with colorful emojis </h3>

</p>
<p align="center">
  <a href="./COPYING">
    <img src="https://img.shields.io/github/license/abishekvashok/cmatrix?color=blue">
  </a>
  <img src="https://img.shields.io/badge/contributions-welcome-orange">
</p>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## Contents
- [Overview](#overview)
- [Build Dependencies](#build-dependencies)
- [Building and Installation](#building-and-installing-ccolor)
- [Usage](#usage)

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## :cloud: Overview

CColor is a fun fork of CMatrix that replaces the traditional characters with colorful emojis! It shows text flying in and out in a terminal like as seen in "The Matrix" movie, but with a colorful emoji twist.

This fork was created by **B.** purely for fun and experimentation. The modifications were made to:
- Replace ASCII characters with colorful emojis
- Test and stress-test [Cursor.ai](https://cursor.ai) capabilities
- Test Windows 11 terminal emoji rendering

> :grey_exclamation:`Disclaimer` : We are in no way affiliated in any way with the movie "The Matrix", "Warner Bros" nor
any of its affiliates in any way, just fans.

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## :open_file_folder: Build Dependencies
You'll probably need a decent ncurses library to get this to work. On Windows, using mingw-w64-ncurses is recommended (PDCurses will also work, but it does not support colors or bold text).
<br>
##### :small_blue_diamond: For Linux<br>
Run this command to check the version of ncurses.
```
ldconfig -p | grep ncurses
```
If you get no output then you need to install ncurses. Click below to install ncurses in Linux.
- [ncurses](https://www.cyberciti.biz/faq/linux-install-ncurses-library-headers-on-debian-ubuntu-centos-fedora/)

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## :floppy_disk: Building and installing ccolor
To install ccolor, Clone this repo in your local system and use the build script from within the ccolor directory.

#### :small_blue_diamond: Quick Build (Recommended)
```sh
# Install dependencies (if needed)
sudo apt-get install build-essential libncursesw5-dev

# Build
./build.sh

# Run
./ccolor
```

#### :small_blue_diamond: Using `configure` (original method)
```sh
autoreconf -i  # skip if using released tarball
./configure
make
make install
```

#### :small_blue_diamond: Using CMake
Here we also show an out-of-source build in the sub directory "build".
(Doesn't work on Windows, for now).
```sh
mkdir -p build
cd build
# to install to "/usr/local"
cmake ..
# OR 
# to install to "/usr"
#cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make
make install
```

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## :bookmark_tabs: Usage

After you have built **ccolor**, just run it:
```sh
./ccolor
```

Run with different arguments to get different effects:
```sh
./ccolor [-abBflohnsmVx] [-u update] [-C color]
```

Example:
```sh
./ccolor -ba -u 2 -C red
./ccolor -r  # Rainbow mode with colorful emojis!
```

For more options and **help** run `./ccolor -h`

**Note**: This fork displays colorful emojis instead of ASCII characters by default. The original CMatrix behavior is preserved when using classic mode (`-c`), console mode (`-l`), or xwindow mode (`-x`).

> :round_pushpin: _Note: ccolor is probably not particularly portable or efficient, but it won't hog
**too** much CPU time._

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## :zap: Original Maintainers (The GOAT)
- ➤ **Abishek V Ashok** [Core] - <abishekvashok@gmail.com><br> 
<p align="center">
  <a href="https://twitter.com/abishekvashok">
    <img src="https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white">
  </a>
  <a href="https://github.com/abishekvashok">
    <img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white">
  </a>
</p>

**All kudos and credit go to the original CMatrix authors!** This is just a playful experiment. 😊

Check out the original amazing project: **[CMatrix on GitHub](https://github.com/abishekvashok/cmatrix)**

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

## :page_facing_up: License
This software is provided under the GNU GPL v3. [View License](./COPYING)
