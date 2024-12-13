# Lunarvim configruation

- Install neovim from [here](https://neovim.io/)
- Install lunarvim from [here](https://lunarvim.org) 
- Lunarvim depends on python, pip, rust, cargo, node, npm, ripgrep
- Assuming that a proper conda environment is initialized with cpplint, pyright, black, flake8
- Others: shellcheck (for bash), [fzf](https://github.com/junegunn/fzf) 

## Lazy Plugins

After the first startup call `:Lazy sync` to update the neovim plugins.

## Language Servers

LSP plugins are installed either with `:MasonInstall` or in the environment.
*Note: For C++ (cpplint, clangd, clang-format) and python (black, flake8, pyright), 
it is better to install in the system.*

For C/C++:
```
    ◍ cmake-language-server cmake
    ◍ clang-format 
    ◍ clangd 
    ◍ cpplint
```

For Python:
```
    ◍ black
    ◍ pyright 
    ◍ flake8 
```

Others:
```
    ◍ bash-language-server
    ◍ fixjson 
    ◍ prettierd 
    ◍ json-lsp
    ◍ lua-language-server
    ◍ rust-analyzer
    ◍ r-languageserver
    ◍ json-lsp
    ◍ texlab 
    ◍ typst-lsp 
    ◍ yaml-language-server
```

## Tree Sitter

Tree Sitter modules should be automatically installed. However, some of the
plugins might raise some issues. In this case, run `:checkhealth` and 
update/re-install the plugins with errors.


