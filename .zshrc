export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gabriel"

plugins=(
	git
	golang
	docker
	docker-compose
        zsh-autosuggestions
        zsh-syntax-highlighting
	)

source $ZSH/oh-my-zsh.sh

# Micro true color suport
export MICRO_TRUECOLOR=1

# Yarn
export PATH="$PATH:$(yarn global bin)"

# Golang
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# Pyvenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# start with tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# Golang
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Dotfiles repository aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotst='dotfiles status'
