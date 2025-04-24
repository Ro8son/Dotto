#!/bin/sh
# dmenu_run improved
# if a command ends with "!", it is started in term.

termcmd="footclient -e"
shellcmd="mksh -c"


cmd="$(bemenu.sh -l 4 -p 'Run:')"
case $cmd in
    *\! ) ${termcmd} ${shellcmd} "$(printf "%s" "${cmd}" | cut -d'!' -f1)" || read
    ;;
    * ) ${shellcmd} "${cmd}" && true || st -t st-popup -e mksh -c "echo Command Error; read" ;;

esac
exit

