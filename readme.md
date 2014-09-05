This is the current state of @chenillen and my .vim folder.

This is part of a bigger dotfiles project tailored to dvorak keyboard users.

## Installation

Clone repo into .vim directory (backup existing .vim if desired) then run:

```sh
make install
```

(it will back up your current .vimrc, .gvimrc)

## Updating

To update plugins run:

```sh
make update
```

## vundle

In order to access all the external plugins, you'll need to run vundle.  After starting vim use

    :PluginInstall
