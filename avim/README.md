# neovim customization based on AstroVim

This custom neovim is a minor customization using 
[AstroNim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Dependencies

- Install neovim from [here](https://neovim.io/)
- Deps: python, pip, rust, cargo, nodejs w. npm, ripgrep
- LSP Dependencies: cpplint, pyright, black, flake8
- Others: shellcheck (for bash), [fzf](https://github.com/junegunn/fzf) 


#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Link to this `avim` directory as the neovim config directory

Optionally delete lazy-lock.json, if exists
```shell
rm -f $HOME/dot-config/avim/lazy-lock.json 
```

Link the `.config/nvim` directory as below:
```shell
ln -s $HOME/dot-config/avim/ $HOME/.config/nvim
```

