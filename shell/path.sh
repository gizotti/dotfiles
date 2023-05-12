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

append_path "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
append_path "/usr/local/opt/go/libexec/bin"
append_path "/usr/local/opt/coreutils/libexec/gnubin"
append_path "/.local/bin"
append_path "/opt/homebrew/bin"

unset append_path
unset prepend_path
