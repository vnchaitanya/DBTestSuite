#!/bin/bash

# checking the status whether it is success or not
function CheckExitStatus
{
    if [ $? -ne "0" ]
    then
        echo "FAILURE"
            #If the installation fails it will exit the code
            if [ $1  -eq  "ExitOnError" ]
            then
                exit 1
            fi
    else
        echo "SUCCESS"
    fi
}

#Adding a time stamp and write the message to test log
function LogMsg
{
    now=`date`
    echo $now ": $1"
    echo $now ": $1" >> $LogFile
}
##########################################################
#
##########################################################
#defining a log file
LogFile="ExecutionLog.log"
#Pushing old logs to 'ExecutionLog.log.old'
if [ -f $LogFile ]
then
    cat $LogFile >> $LogFile.old
fi
