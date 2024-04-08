alias nvim=lvim
export EDITOR='lvim'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=/usr/local/Cellar:$PATH
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"
export PATH="/Applications/Alacritty.app/Contents/MacOS/alacritty:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# git integration wizardry
autoload -Uz vcs_info
setopt prompt_subst
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{216}(%b)%f %F{209}%r%f'
zstyle ':vcs_info:*' enable git

# prompt customization
# structure: path isRoot? jobs >
PROMPT='%F{blue}%3~%f %F{cyan}%f%(!.! .)%1(j.%F{yellow}%j%f .)%(?.%F{green}>%f.%F{red}>%f) '
PATH="/Users/scornelius/Library/Python/3.8/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# pnpm
export PNPM_HOME="/Users/simoncornelius/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fpath+=${ZDOTDIR:-~}/.zsh_functions

alias python=python3
