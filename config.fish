#view
set -g theme_display_date yes
set -g theme_date_format "+%F %H:%M"
set -g theme_display_git_default_branch yes
set -g theme_color_scheme dark

# alias
alias vim=nvim
alias vi=vim
alias rm=trash-put
alias ll=ls -lh
aliad la=ls -aA

## set
set LESSHISTFILE /dev/null
set EDITOR vim

# pyenv
set PYENV_ROOT $HOME/.config/pyenv
set PATH $PYENV_ROOT/bin $PATH
pyenv init - | source
pyenv virtualenv-init - | source

# fzf
set FZF_LEGACY_KEYBINDINGS 0
set FZF_DEFAULT_COMMAND 'fd -t f -I -H -E ".git" -E ".cache" . ~'
set FZF_DEFAULT_OPTS '--preview "bat -nf {}" --reverse --border --height 40%'
set FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set FZF_OPEN_COMMAND $FZF_DEFAULT_COMMAND
set FZF_CD_COMMAND $FZF_DEFAULT_COMMAND
