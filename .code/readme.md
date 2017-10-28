# Fixing for Visual Studio Code

## Symlink

First remove the User-folder (if you are scared you can save the folder elsewhere and skip this step!)

`rm -rf ~/Library/Application\ Support/Code/User`

Then add a symlink via the Terminal

`ln -s ~/Projects/dotfiles/.code/User ~/Library/Application\ Support/Code/User`

## Extensions

Run `sh extensions.sh` to install the extensions

To add newly locally installed extensions to dotfile. Run `code --list-extensions` to get hold of the id and add it to extensions.sh.
