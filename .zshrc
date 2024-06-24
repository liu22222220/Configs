# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(git zsh-autosuggestions auto-ls)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=174"

source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/zlong_alert/zlong_alert.zsh


eval $(thefuck --alias)
alias f='fuck'

function fp() { old=`pwd`;new=$(dirname "$1");if [ "$new" != "." ]; then cd $new; fi;file=`pwd`/$(basename "$1");cd $old;echo $file; }
