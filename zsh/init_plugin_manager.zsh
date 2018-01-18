if (( $+commands[runghc] )); then
	. ~/.zsh/antigen-hs/init.zsh
else
	. ~/.zsh/antigen/antigen.zsh

	antigen bundle Tarrasch/zsh-functional
	antigen bundle Tarrasch/zsh-bd
	antigen bundle zsh-users/zsh-syntax-highlighting
	antigen bundle zsh-users/zsh-history-substring-search
	antigen bundle zsh-users/zsh-completions
	antigen bundle frmendes/geometry
	antigen bundle Tarrasch/zsh-command-not-found
	antigen bundle Tarrasch/zsh-mcd
        antigen bundle Tarrasch/zsh-autoenv
	antigen apply
fi
