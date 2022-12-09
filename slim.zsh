slim_path=`dirname $0`
fpath=( $slim_path $fpath )
source ~/.config/slimzsh/.zprofile

HISTFILE=$slim_path/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v

autoload -U promptinit && promptinit
prompt pure
# autoload -U colors && colors

# setopt promptsubst

export PF_SOURCE="${HOME}/.config/slimzsh/.zshenv"

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#a6e3a1,hl+:#fab387"

autoload -U compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1
export LESSHISTFILE=-

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $slim_path/aliases.zsh
source $slim_path/correction.zsh
source $slim_path/sudo.plugin.zsh
source $slim_path/stack.zsh
source $slim_path/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh


