# dotfiles

## Requirements

```sh
sudo apt install stow neovim fzf zsh autojump
```

```sh
yay -S stow neovim fzf zsh autojump
```

```sh
stow .
```

### ZSH

**Oh My Zsh:**

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**ZSH plugins:**

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

