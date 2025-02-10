# neovim customization based on AstroVim


My custom neovim starting with the [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Dependencies

- Install neovim from [here](https://neovim.io/)
- Deps: python, pip, rust, cargo, node, npm, ripgrep
- LSP Dependencies: cpplint, pyright, black, flake8
- Others: shellcheck (for bash), [fzf](https://github.com/junegunn/fzf) 


#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Soft link to this repo as the neovim config directory

```shell
ln -s $HOME/dot-config/avim/ $HOME/.config/nvim
```

