# load aliases
if [ -f $HOME/.config/fish/alias.fish ]
  source $HOME/.config/fish/alias.fish
end

# env variables
set -Ux EDITOR nvim
set -Ux COREPACK_ENABLE_AUTO_PIN 0

fish_add_path -m /usr/local/go/bin

if status is-interactive
  # Commands to run in interactive sessions can go here
end

starship init fish | source
