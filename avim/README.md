# neovim with AstroVim

This custom neovim with a  customization using 
[AstroNim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Install Dependencies

- Install neovim (>=0.12) from [here](https://neovim.io/)
- Language Deps:  
  - [miniforge conda](https://github.com/conda-forge/miniforge) (python) w. pip
  - [rust](https://rust-lang.org/) w. cargo & rust-analyzer, and 
  - [nodejs](https://nodejs.org/en) w. npm
- Deps installed outside `mason`:  
   shellcheck (for bash), fzf, ripgrep, tree-sitter-cli.
  - `ripgrep` and `tree-sitter-cli` can be installed via cargo;
  - [fzf](https://github.com/junegunn/fzf) ; 
  - [shellcheck](https://github.com/koalaman/shellcheck)
- Other Dependencies: cpplint, pyright, black, flake8


#### Make a backup of the share/cache folders

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create `nvim` link in the `.config` directory

Clone this repo
```shell
git clone https://github.com/srirampc/dot-config.git $HOME/
```

Delete lazy-lock.json, if exists
```shell
rm -f $HOME/dot-config/avim/lazy-lock.json 
```

Link the `.config/nvim` directory as below:
```shell
ln -s $HOME/dot-config/avim/ $HOME/.config/nvim
```
