# nix-direnv
file="$HOME/.nix-profile/share/nix-direnv/direnvrc" 
if [ -f "$file" ]
then
  source $file
fi

eval "$(direnv hook zsh)"