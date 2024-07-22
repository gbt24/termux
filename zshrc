# Created by newuser for 5.9
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export VISUAL=nvim
export PAGER=bat

alias v="nvim"
alias nc="cd ~/.config/nvim"
alias ls="exa --icons"
alias lg="lazygit"
alias s="neofetch"
alias r="yazi"
alias sr="sudo yazi"
alias c="clear"
alias setproxy="export https_proxy=http://127.0.0.1:7890;export http_proxy=http://127.0.0.1:7890;export all_proxy=socks5://127.0.0.1:7890"
alias unsetproxy="unset ALL_PROXY"
alias grep="grep --color"
alias -s html='nvim'
alias -s txt='nvim'
alias -s md='nvim'
alias -s py='nvim'
alias -s c='nvim'
alias -s rar='rar x'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
eval "$(starship init zsh)"


# Open in tmux popup if on tmux, otherwise use --height mode
export FZF_DEFAULT_OPTS='--height 40% --tmux bottom,40% --layout reverse --border top --preview "bat --color=always {} "'
#export fzf_preview_cmd='if file --mime-type {} | grep -qF 'image/'; then kitty icat --clear --transfer-mode=memory --stdin=no --place=${FZF_PREVIEW_COLUMNS}x${FZF_PREVIEW_LINES}@0x1 {} else bat --color=always {} fi'
export FZF_DEFAULT_COMMAND='fd'
# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"

  # Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"

  # CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'"
