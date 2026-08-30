# oh-my-zsh-powerline-theme

[![License: MIT](https://img.shields.io/github/license/howar31/oh-my-zsh-powerline-theme?style=flat-square)](LICENSE)
[![Made with Zsh](https://img.shields.io/badge/made%20with-Zsh-1A2C34?logo=gnu-bash&logoColor=white&style=flat-square)](https://www.zsh.org/)
[![GitHub stars](https://img.shields.io/github/stars/howar31/oh-my-zsh-powerline-theme?style=flat-square)](https://github.com/howar31/oh-my-zsh-powerline-theme/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/howar31/oh-my-zsh-powerline-theme?style=flat-square)](https://github.com/howar31/oh-my-zsh-powerline-theme/commits)
[![Sponsor](https://img.shields.io/badge/Sponsor-donate.howar31.com-b4532c?style=flat-square&logo=data:image/svg%2Bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0iI2ZmZiIgZD0iTTIwLjg0IDQuNjFhNS41IDUuNSAwIDAgMC03Ljc4IDBMMTIgNS42N2wtMS4wNi0xLjA2YTUuNSA1LjUgMCAwIDAtNy43OCA3Ljc4bDEuMDYgMS4wNkwxMiAyMS4yM2w3Ljc4LTcuNzggMS4wNi0xLjA2YTUuNSA1LjUgMCAwIDAgMC03Ljc4eiIvPjwvc3ZnPg==)](https://donate.howar31.com/)

*This is a fork of https://github.com/brucehsu/oh-my-zsh-powerline-theme*

---

oh-my-zsh Powerline style Theme

This is a modified two-line version: one for information, one for input.

Dim colored version is modified by Howar31.

> zsh installation instruction in [Howar31 blog] (http://blog.howar31.com/install-zsh-oh-my-zsh-on-ubuntu/) .

## Preview

[Original](https://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme) version:
![Preview](http://github.com/jeremyFreeAgent/oh-my-zsh-powerline-theme/raw/master/preview.png)

[Modified two-line](https://github.com/brucehsu/oh-my-zsh-powerline-theme) version:
![Preview](https://raw.github.com/brucehsu/oh-my-zsh-powerline-theme/master/twoline-preview.png)

Dim version:
![Preview](https://raw.github.com/howar31/oh-my-zsh-powerline-theme/master/dim-preview.png)

## Note

* This version not only modified the color scheme but also used variables to manage colors for future easily modification.
* Due to my own environment settings, I've disabled the ruby features in this theme.  To re-enable them, just simply remove the "#" in front of the lines in the function.

## Requirements

* Z shell (zsh) and oh-my-zsh
	* See [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for more info.
	* Installing zsh/oh-my-zsh on Linux(Ubuntu), see [Howar31's blog](http://blog.howar31.com/install-zsh-oh-my-zsh-on-ubuntu/) for more info.
* Patched font for fancy symbols
	* Vim Powerline patched font : See [Powerline for vim](https://github.com/Lokaltog/vim-powerline.git) for more info.
	* Patch your font for your self.
	* Or use the included patched font Monaco "Monaco_Linux-powerline.ttf".

## General Set Up

1. Clone the repository.

2. Create un symlink of **powerline.zsh-theme** in **.oh-my-zsh/themes/**.
	* `ln -s directory_of_theme/powerline.zsh-theme .oh-my-zsh/themes/`

3. Configure the theme in your **.zshrc** file :

    ```
    ZSH_THEME="powerline"
    ```

## Configuration on Mac

1. Change the font of your terminal to the patched font.
	* Example for iTerm: `Preference` > `Profile` > `Text` > change the font
2. Done, configuration on Mac is easy.

## Configuration for PuTTY on Windows

See [Tom Ryder's blog](http://blog.sanctum.geek.nz/putty-configuration/) for more detail.

1. `Connection` > `Data` > `Terminal details` > `Terminal-type string`: `putty-256color`
2. `Window` > `Colours` > `General options for colour usage` check `Allow terminal to use xterm 256-colour mode`
	* Testing wether the 256-color setting is working or not

	```
	$ for color in $(seq 0 255); do
	> tput setaf $color && echo -n "test"
	> done
	```
	* Type `reset` to fix your termianl after testing.
![PuTTY 256-color test](https://raw.github.com/howar31/oh-my-zsh-powerline-theme/master/putty-256color-test.png)

3. `Window` > `Translation` > `Character set translation` > `Remote character set`: `UTF-8` 
4. `Window` > `Appearance` > `Font settings`
	* Change the font to patched font.
	* Check `Allow selection of variable-pitch fonts` if you cannot find your font in the list.
5. Done, remember to save your settings as Saved Sessions.
