pgswitch() {
  pgstop $1
  pgstart $2
}

pgstart() {
  echo "Starting PG $1"

  logfile="/usr/local/var/log/postgres@$1.log"

  if [ ! -f $logfile ]
  then
    touch $logfile
  fi

  ~/.asdf/installs/postgres/$1/bin/pg_ctl -D ~/.asdf/installs/postgres/$1/data -l $logfile start
}

pgstop() {
  echo "Stopping PG $1"

  ~/.asdf/installs/postgres/$1/bin/pg_ctl -D ~/.asdf/installs/postgres/$1/data stop
}
