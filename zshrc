#
# User configuration
. ~/.zsh/init_plugin_manager.zsh
. ~/.zsh/zsh_aliases
. ~/.zsh/zsh_exports


bindkey "^p" history-beginning-search-backward
bindkey "^n" history-beginning-search-forward


fpath=(~/.zsh/plugins/completions/src $fpath)
fpath+=~/.zfunc

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

autoload -U colors
colors

##
# Completion
##
autoload -U compinit
zmodload -i zsh/complist
compinit
setopt hash_list_all            # hash everything before completion
unsetopt completealiases        # do not complete aliases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word
setopt complete_in_word         # allow completion from within a word/phrase
setopt correct                  # spelling correction for commands
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.
setopt hist_ignore_all_dups

. ~/.zsh/import_from_omz

##
# Various
##
setopt auto_cd                  # if command is a path, cd into it
setopt auto_remove_slash        # self explicit
setopt GLOB_STAR_SHORT          # allows **/*.c to be shortened to **.c

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' glob 1
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '$HOME/.zshrc'

. ~/.zsh/zsh_prompt_customization


## Command history configuration
if [[ -z "$HISTFILE" ]]; then
    HISTFILE=$HOME/.zsh_history
fi

HISTSIZE=10000
SAVEHIST=10000

# Show history
case $HIST_STAMPS in
  "mm/dd/yyyy") alias history='fc -fl 1' ;;
  "dd.mm.yyyy") alias history='fc -El 1' ;;
  "yyyy-mm-dd") alias history='fc -il 1' ;;
  *) alias history='fc -l 1' ;;
esac

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data


true


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


__conda_dir="/Users/erikwijmans/miniconda3"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('${__conda_dir}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${__conda_dir}/etc/profile.d/conda.sh" ]; then
        . "${__conda_dir}/etc/profile.d/conda.sh"
    else
        export PATH="${__conda_dir}/bin:$PATH"
    fi
fi
unset __conda_setup
unset __conda_dir
# <<< conda initialize <<<
