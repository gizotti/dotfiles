export ASDF_GOLANG_MOD_VERSION_ENABLED=true

file="$HOME/.asdf/plugins/golang/set-env.zsh"
if [ -f "$file" ]
then
  source $file
fi