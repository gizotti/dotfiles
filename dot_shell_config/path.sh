function append_path() {
  if [ -d "$1" ]; then
    PATH="$PATH:$1"
  fi
}

function prepend_path() {
  if [ -d "$1" ]; then
    PATH="$1:$PATH"
  fi
}

append_path "$(brew --prefix)/bin:/usr/bin:/bin:/usr/sbin:/sbin"
append_path "$(brew --prefix)/opt/go/libexec/bin"
append_path "$(brew --prefix)/opt/coreutils/libexec/gnubin"
append_path "$(brew --prefix)/bin"
append_path "$HOME/.claude/local"

unset append_path
unset prepend_path
