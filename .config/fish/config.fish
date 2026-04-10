# load aliases
if [ -f $HOME/.config/fish/alias.fish ]
  source $HOME/.config/fish/alias.fish
end

function fish_title
  echo (status current-command)
end

# env variables
set -Ux EDITOR nvim
set -Ux COREPACK_ENABLE_AUTO_PIN 0

fish_add_path -m /usr/local/go/bin
fish_add_path -m $HOME/.config/emacs/bin
fish_add_path -m $HOME/.cargo/bin

if status is-interactive
  # Commands to run in interactive sessions can go here
end

starship init fish | source

set -x N_PREFIX "$HOME/n"; contains "$N_PREFIX/bin" $PATH; or set -a PATH "$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
