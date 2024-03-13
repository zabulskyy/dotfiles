```bash
git clone https://github.com/zabulskyy/dotfiles ~/.dotfiles && mv ~/.dotfiles/nvim ~/.config
sudo apt-get update
sudo apt install curl
```
```bash
cd ~/.dotfiles
bash oh-my-bash.sh
```

```
sudo apt-get install ninja-build \
     gettext libtool libtool-bin \
     autoconf automake cmake g++ \
     pkg-config unzip
```

```
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release \
     CMAKE_INSTALL_PREFIX=~/neovim install
export PATH=”~/neovim/bin:$PATH” >> ~/.bashrc
source ~/.bashrc
```

```
cat ~/.bashrc.omb-backup-$(date +%Y%m%d%H%M%S) >> ~/.bashrc
cat ~/.dotfiles/.bashrc >> ~/.bashrc
```
