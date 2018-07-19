. ./LinuxLib.sh

#Commands to Install Influxdb
sudo apt-get update
CheckExitStatus "ExitOnError"
LogMsg "Info:Updating pacakges"

sudo apt-get install influxdb
CheckExitStatus "ExitOnError"
LogMsg "Info:Installing latest version of Influxdb"

sudo apt install influxdb-client
CheckExitStatus "ExitOnError"
LogMsg "Info:Installing influxdb client"

