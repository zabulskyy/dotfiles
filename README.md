```bash
git clone https://github.com/zabulskyy/dotfiles ~/.dotfiles && mv ~/.dotfiles/nvim ~/.config
```
```bash
cp ~/.bashrc ~/.bashrc.orig
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cat ~/.bashrc.orig >> ~/.bashrc
rm ~/.bashrc.orig
source ~/.bashrc
```
