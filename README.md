# Auravim
My aura-theme-infused neovim setup.
## Prerequisites
- neovim
- ripgrep
- git
- [packer.vim](https://github.com/wbthomason/packer.nvim)
## Setup / Installation
### Local Installation
- Clone this repo into ` ~/.config/nvim ` (rename any existing configs to prevent overwriting).
- Open ` nvim ` and run the ` :PackerSync ` command (or) run the below command.
```
nvim -c "PackerSync"
```

### Docker Installation (requires ` docker `)
- Create a linux container (Arch Linux in this case).
```
sudo docker run -w /root -it --rm archlinux:latest sh
```
- Then in the the prompt that follows paste the following.
```
pacman -Syu --noconfirm git neovim ripgrep
mkdir .config
git clone https://github.com/jun6000/Auravim .config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim -c "PackerSync"
```

### Note
- Incase a plugin fails to install run the ` PackerSync ` command again.
