# Windows 10 WSL setup instructions

1. Update package information:

```
sudo apt update
```
2. Install zsh:

```
sudo apt install zsh -y
```
3. Install Oh my zsh:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
4. Install nvm:

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```
5. Create a symbolic link to zsh config file
```
cd ~
ln -s ~/repos/dotfiles/wsl-ubuntu/zshrc .zshrc
```
6. Create a symbolic link for the oh my zsh theme
```
cd ~/.oh-my-zsh/themes
ln -s ~/repos/dotfiles/wsl-ubuntu/custom-agnoster.zsh-theme custom-agnoster.zsh-theme
```
7. Install neovim
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```
8. Create `init.vim` file

Run `nvim` and then
```
# create a directory to hold the init.vim file
:call mkdir(stdpath('config'), 'p')
# then create an init.vim file
:exe 'edit '.stdpath('config').'/init.vim'
```
*Note* This is sourced from the `:h nvim` command

9. Add this line to `init.vim` file
```
source $HOME/repos/dotfiles/wsl-ubuntu/vim/vimrc
```
