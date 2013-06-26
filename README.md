# oh-my-zsh-powerline-theme

*This is a fork of https://github.com/brucehsu/oh-my-zsh-powerline-theme*

---

oh-my-zsh Powerline style Theme

This is a modified two-line version: one for information, one for input.

Dim colored version is modified by Howar31.

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
	* Installing zsh/oh-my-zsh on Linux(Ubuntu), see [Howar31's blog](http://howar31.blogspot.tw/2013/06/install-zsh-oh-my-zsh-on-ubuntu.html) for more info.
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

3. `Window` > `Translation` > `Character set translation` > `Remote character set`: `UTF-8` 
4. `Window` > `Appearance` > `Font settings`
	* Change the font to patched font.
	* Check `Allow selection of variable-pitch fonts` if you cannot find your font in the list.
5. Done, remember to save your settings as Saved Sessions.
