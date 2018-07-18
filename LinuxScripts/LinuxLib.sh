#!/bin/bash
# checking the status whether it is success or not
function CheckExitStatus()
{
    if [ "$?" -ne "0" ];
    then
        echo "FAILURE";
            #If the installation fails it will exit the code
            if [ "$1"  -eq  "ExitOnError" ];
            then
                exit 1;
            fi
    else
        echo "SUCCESS";
    fi
}

#Adding a time stamp and write the message to test log
function LogMsg()
{
  echo $(date)  "$1"
}

