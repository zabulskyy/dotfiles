```bash
git clone https://github.com/zabulskyy/dotfiles ~/.dotfiles && mv ~/.dotfiles/nvim ~/.config
sudo apt-get update
sudo apt install curl

```
```bash
cd ~/.dotfiles
bash oh-my-bash.sh
cat ~/.bashrc.omb-backup >> ~/.bashrc
source ~/.bashrc

```

```
sudo apt-get install ninja-build \
     gettext libtool libtool-bin \
     autoconf automake cmake g++ \
     pkg-config unzip
```

```
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs            

```

```
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release \
     CMAKE_INSTALL_PREFIX=~/neovim install
alias nvim=~/neovim/bin/nvim
source ~/.bashrc
nvim

```
