set -U EDITOR nvim
set -x PAGER less

# latex
### TODO: fix "###"
### source ~/.local/lib/python2.7/site-packages/powerline/bindings/fish/powerline-setup.fish 
### powerline-setup
### ~/.local/bin/powerline-daemon -q
#set -x PATH $PATH:~/.local/bin/
set -x PATH $PATH:/usr/local/texlive/2021/bin/x86_64-linux/

set VERSION v18.16.1
set DISTRO linux-x64
set -x PATH /usr/local/lib/nodejs/node-$VERSION-$DISTRO/bin:$PATH

# conda setup
source /home/srirampc/anaconda3/etc/fish/conf.d/conda.fish
conda activate base

### source ~/anaconda3/pkgs/powerline-status-2.7-py37h14c3975_1000/lib/python3.7/site-packages/powerline/bindings/fish/powerline-setup.fish
source ~/anaconda3/lib/python3.9/site-packages/powerline/bindings/fish/powerline-setup.fish
powerline-setup

alias vi=nvim
alias vim=nvim
