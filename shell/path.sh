function append_path() {
  if [ -d "$1" ]; then
    PATH="$PATH:$1"
  fi
}

append_path "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# TODO: Properly setup go
#append_path "/usr/local/opt/go/libexec/bin"

unset append_path
