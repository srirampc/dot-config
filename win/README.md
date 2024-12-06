## Basic Windows Configuration

- Install powershell form [here](https://github.com/PowerShell/PowerShell).
- Install neovim from [here](https://neovim.io)
- Install Lunarvim from [here](https://lunarvim.org)
- Lunarvim dependencies include python, pip, rust, cargo, nodejs, npm, ripgrep
- When installing nodejs, make sure the Visual Studio compiler is also installed.
- Update the path to visual studio compiler in `Microsoft.PowerShell_profile.ps1`
- Copy `Invoke-CmdScript.ps1` and  `Microsoft.PowerShell_profile.ps1` to 
  `$HOME/OneDrive/Documents/PowerShell` or  `$HOME/Documents/PowerShell` depending
  on the setup
- Lunarvim vim installation should automatically generate `lvim.ps1` to `$HOME/.local/bin`
- Find the location of `$LUNARVIM_CONFIG_DIR` as defined in `$HOME/.local/bin/lvim.ps1`
- Create SymbolicLink to `lvim` directory using `ni` as follows:
  ```
  cd $LUNARVIM_CONFIG_DIR
  cd ..
  mv lvim lvim.old
  ni lvim -i SymbolicLink -ta C:\Users\srira\dot-config\lvim
  ```
- Open `lvim` and run `:Lazy sync` and `:TSUpdateSync` to update/sync.
- Install `neovide` from [here](https://neovide.dev)
- Create `lvide.ps1` in `$HOME/.local/bin` and update the paths accordingly.
