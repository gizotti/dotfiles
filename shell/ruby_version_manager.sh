# rvm
if [ -d "$HOME/.rvm" ]
then
  export PATH="$PATH:$HOME/.rvm/bin"
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

# rbenv
if [ -d "$HOME/.rbenv" ]
then
  export PATH="$PATH:$HOME/.rbenv/bin"
  [[ -s "$HOME/.rbenv/scripts/rbenv" ]] && . "$HOME/.rbenv/scripts/rbenv"
fi
