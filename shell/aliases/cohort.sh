alias carr='cd ~/Dev/cohortarrivals'
alias ccore='cd ~/Dev/cohort-core'
alias cflow='cd ~/Dev/cohortflow'
alias cpay='cd ~/Dev/cohortpay'
alias csim='cd ~/Dev/cohortsim'
alias ctrans='cd ~/Dev/cohortpay-transact'
alias oshc='cd ~/Dev/oshcaustralia'

alias runmirror='cd ~/Dev/mirror && source .env && thin -R config.ru -p 9292 start'
alias runfakes3='cd ~/Dev/fake-s3 && bin/fakes3 server -r `pwd`/tmp -p 10001 -h s3.dev'

alias linkcc='bundle config local.cohort_core ~/Dev/cohort-core/'
alias unlinkcc='bundle config --delete local.cohort_core'
