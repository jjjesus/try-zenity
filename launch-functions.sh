#!/bin/bash

###################### deletetempfiles function ##############################

# This function is called by trap command
# For conformation of deletion use rm -fi *.$$

deletetempfiles()
{
    rm -f *.$$
}


do_something()
{
   zenity --text-info \
        --width=800 \
        --height=400 \
    --title "Setting Defaults " \
    --filename="$DIRNAME/DoSomething.txt"

   # do something here
}

do_something_else()
{
   zenity --text-info \
        --width=800 \
        --height=400 \
    --title "Something else" \
    --filename="$DIRNAME/DoSomethingElse.txt"

   # do something here
}

do_form()
{
   zenity --forms \
        --width=800 \
        --height=400 \
    --title="Please provide" \
    --separator="," \
    --add-entry="Number of Iterations" \
    --add-entry="Random Seed Value (integer from 1-256)" \
    > data.csv

   # do something here
    cat data.csv

}
 
pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

