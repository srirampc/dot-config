# Bash config using bash-it

- Install fzf from [here](https://github.com/junegunn/fzf) (which requires installation of `rustup` and `cargo`)
- Install fnm from [here](https://github.com/Schniz/fnm) and then `nodejs`
- Install bash-it from [here](https://github.com/Bash-it/bash-it)
- _DO NOT_ initialize fzf in .bashrc, use `bash-it` to initialize fzf as below:
  ```bash
  bash-it enable alias general git composer
  bash-it enable completion git composer ssh cargo
  bash-it enable plugins git fzf
  ```
- For powerline prompt from bash int
  ```bash
  POWERLINE_PROMPT="hostname scm python_venv cwd"
  HOST_THEME_PROMPT_COLOR=$USER_INFO_THEME_PROMPT_COLOR
  CONDA_PYTHON_VENV_CHAR=""
  ```
- Initialize conda environment with `conda init` so that conda environment
  is setup at the bottom
- Initialize bash_aliases if needed
