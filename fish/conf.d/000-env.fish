
set -x PATH $HOME/bin $PATH
set -x JAVA_HOME ~/apps/jdk1.8.0_212/
set -x JRE_HOME ~/apps/jdk1.8.0_212/jre/
set -x PATH $JAVA_HOME/bin $PATH
#set -x PYENV_ROOT $HOME/.pyenv
#set -x PATH $PYENV_ROOT/bin $PATH
#set -x PATH /home/sriram/anaconda3/bin $PATH
set -x PATH ~/apps/go/bin $PATH
set -x GOPATH ~/go
set -x PATH $PATH $GOPATH/bin
set -x PATH $HOME/.cargo/bin $PATH

set -x PATH $PATH $HOME/texlive/2019/bin/x86_64-linux
set -x MANPATH /home/srirampc/texlive/2019/texmf-dist/doc/man $MANPATH.
set -x INFOPATH /home/srirampc/texlive/2019/texmf-dist/doc/info $INFOPATH.

