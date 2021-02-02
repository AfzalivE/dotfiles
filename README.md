# Afzal's dotfiles

This repo is mostly unmaintained. My real omz (oh-my-zsh) configs live in a private repo.

## YMD75 v3 for Mac

The firmware file contains a QMK firmware for YMD75 v3 PCB with a custom keymap more suited to a Mac user.

![keymap_layer0](https://github.com/AfzalivE/dotfiles/blob/master/ymd75_v3_mac/Screen%20Shot%202021-02-02%20at%2012.37.50%20AM.png?raw=true)

![keymap_layer1](https://github.com/AfzalivE/dotfiles/blob/master/ymd75_v3_mac/Screen%20Shot%202021-02-02%20at%2012.37.59%20AM.png?raw=true)

Do note that the shortcut to put the keyboard in bootloader is to hold Space + B and then plug in the keyboard. If you have QMK Toolbox open, you will see "Atmel DFU device connected".

Along with this, the Karabiner Elements config really completes it. It contains the following Modifications:
1. f24 to fn (along with the keymap, this brings true Apple Fn)
1. Change caps_lock key to command+control+option+shift. (Post escape key when pressed alone)
1. Change control + delete to forward delete
1. Change fn+F14 to command+option+power (locks the screen)
