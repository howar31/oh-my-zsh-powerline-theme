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

## Set Up

1. Clone the repository.

2. Create un symlink of **powerline.zsh-theme** in **.oh-my-zsh/themes/**.
	* `ln -s directory_of_theme/powerline.zsh-theme .oh-my-zsh/themes/`

3. Configure the theme in your **.zshrc** file :

    ```
    ZSH_THEME="powerline"
    ```

## Requirements

* Vim Powerline patched font : See [Powerline for vim](https://github.com/Lokaltog/vim-powerline.git) for more info.
* *Patched font Monaco has already included as "Monaco_Linux-powerline.ttf".*
* Z shell (zsh) : See [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for more info.

## Note

* This version not only modified the color scheme but also used variables to manage colors for future easily modification.
* Due to my own environment settings, I've disabled the ruby features in this theme.  To re-enable them, just simply remove the "#" in front of the lines in the function.
