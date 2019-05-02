pgswitch() {
  logfile="/usr/local/var/log/postgres@$2.log"

  if [ ! -f $logfile ]
  then
    touch $logfile
  fi

  ~/.asdf/installs/postgres/$1/bin/pg_ctl -D ~/.asdf/installs/postgres/$1/data stop
  ~/.asdf/installs/postgres/$2/bin/pg_ctl -D ~/.asdf/installs/postgres/$2/data -l $logfile start
}
