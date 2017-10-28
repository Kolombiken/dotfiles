# Fixing for Visual Studio Code

## Symlink

Add a symlink via the Terminal

`ln -s ~/Projects/dotfiles/.code/User ~/Library/Application\ Support/Code/User`

## Extensions

Run `sh extensions.sh` to install the extensions

To add newly locally installed extensions to dotfile. Run `code --list-extensions` to get hold of the id and add it to extensions.sh.
