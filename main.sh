#!/bin/bash
DIRNAME=$(dirname $0)

startup() {

    which zenity &> /dev/null
    [ $? -ne 0 ]  && echo "zenity is not available, Install it" && exit 1
    . $DIRNAME/launch-functions.sh
}

##############################################################################
#                           MAIN STARTS HERE                                 #
##############################################################################

trap 'deletetempfiles'  EXIT     # calls deletetempfiles function on exit

startup

while :
do

# Dialog utility to display options list

    choice="$(zenity --list \
        --width=800 \
        --height=400 \
        --title "Breakfast Setup Menu" \
        --column "" \
        "Do Something" \
        "Do Something Else" \
        "Do Form" \
        "EXIT" )"

    case "${choice}" in
          "Do Something" )  do_something ;;
          "Do Something Else" )  do_something_else ;;
          "Do Form" )  do_form ;;
          "EXIT" )       clear; exit 0;;
    esac
done

