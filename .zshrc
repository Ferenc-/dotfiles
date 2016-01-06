# Created by newuser for 5.1.1

#export TERM="screen-256color-bce"
export TERM=xterm-256color
#export DEFAULT_USER="ferenc"
# For color codes check spectrum_ls:
# https://github.com/dmmalam/dotty/blob/master/zsh/functions/spectrum_ls
# For available segment colors
# https://github.com/chris-murray/powerlevel9k-custom#special-segment-colors
export POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="234"
export POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="015"
source ~/COMPILED/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode context dir vcs)

# VI-Mode
# general activation
bindkey -v

# make it more responsive
export KEYTIMEOUT=1