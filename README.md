# dotfiles
![](https://img.shields.io/badge/dotfiles-v1.0-519dd9.svg)   ![](https://img.shields.io/badge/platform-Windows%20%7C%20ArchLinux%20%7C%20termux%20%7C%20Ubuntu%20%7C%20WSL-brightgreen.svg)  ![](https://img.shields.io/badge/language-Elisp%20%7C%20Vimscript%20%7C%20YASnippets%20%7C%20bash-orange.svg)

<a href="https://github.com/CanftIn/MyRC/issues/new"><img alt="Support me" src="https://img.shields.io/badge/Support%20Me-%F0%9F%92%97-ff69b4.svg"></a>

My Emacs, vim, zsh, tmux, i3, urxvt, alacritty, ArchLinux, WSL, Windows dotfiles.


My ArchLinux setting resouce files, the `private` fold is about my private configuations for platfroms like: 

`WSL` => Windows subsystem linux environment configuations,

`termux` => Anroid termux environment configuations,

`arch` => ArchLinux environment configuations,

and so on.

From 2020 ==> this repo is not only aiming at ArchLinux, but also working well on Windows such as `spacemacs` and `vimrc` dotfiles. 

![screenshot](https://github.com/CanftIn/MyRC/tree/master/screenshots/screenshot.png)

`spacemacs` private configuations include `font ligature` `org mode` `language format` `prettify eshell` `prettify code` `yasnippets` `CanftIn-theming` customizations and so on.

The dracula theme needs `iA Writer Quattro S` `FiraCode Nerd Font` `iA Writer Mono S` fonts defaultly.
Change the theme fonts in the file if you need.


tmux config from [gpakosz/.tmux](https://github.com/gpakosz/.tmux)

i3wm config from [CanftIn/i3wm-themer](https://github.com/CanftIn/i3wm-themer)

urxvt font(Hack Nerd Font) from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

touchpad setting [libinput-gestures.conf](.config/libinput-gestures.conf)
need `libinput-gestures` installed to support guestures
```
$ sudo gpasswd -a $USER input  # add user to input user group
$ vim $HOME/.config/libinput-gestures.conf # copy /etc/libinput-gestures.conf
$ libinput-gestures-setup start
```
enable the touchpad:
```
$ xinput list
$ xinput list-props "SynPS/2 Synaptics TouchPad" 
$ xinput set-prop "SynPS/2 Synaptics TouchPad"  "libinput Tapping Enabled" 1
```

**About vimrc:**

*The past：*
vimrc mainly refers to [humiaozuzu/dot-vimrc](https://github.com/humiaozuzu/dot-vimrc) &&[yangyangwithgnu/use_vim_as_ide](https://github.com/yangyangwithgnu/use_vim_as_ide/blob/master/.vimrc)

*Now:*
The vimrc learn from more others configuations, thanks for community. And it still on improving.

 

### how to use:
```bash
git clone https://github.com/CanftIn/dotfiles.git
cd dotfiles
cp -r . ~
```
