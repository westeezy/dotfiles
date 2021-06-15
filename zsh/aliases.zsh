# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# fast reload zsh settings and redirect stdout to dev/null
alias reload!='. ~/.zshrc 2>&1 1>/dev/null'

# move to dotfiles
alias dotfiles="cd ~/.dotfiles"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias ssh-ui="ssh westin@10.191.3.154"
