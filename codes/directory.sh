#!/bin/bash
#set -x

#logfile directory can be changed according to user needs
logFile=/home/shitunjay/Desktop/FileManager.txt 
now=$(date)

#function for directory creation
addDir() 
{
    dir1=$1
    dir2=$2
    if [ -d "$dir1" ]; then
        cd $dir1
        #checks whether there is already existing directory with same name
        if [ -d "$dir2" ]; then
        #writes the log in FileManager.txt and displays the echo to user in cmd line also 
        echo "$dir2 already exists, choose a different name $now" | tee -a $logFile  
        exit
        fi
        mkdir -p /$dir1/"$dir2"
        echo "$dir2 Directory created $now"| tee -a $logFile
    else
        echo "$dir1 Does not exist $now" | tee -a $logFile
    fi
}

#function for directory deletion
delDir() 
{
    dir1=$1
    dir2=$2
    if [ -d "$dir1" ]; then
        cd $dir1
         #checks the existence of directory to be deleted
        if [ ! -d "$dir2" ]; then 
        #writes the log in FileManager.txt and displays the echo to user in cmd line also
        echo "$dir2 does not exist, create directory first $now" | tee -a $logFile  
        exit
        fi
        rm -rfd "$dir2"
        echo "$dir2 Directory removed $now" | tee -a $logFile
    else
        echo "$dir1 Does not exist $now" | tee -a $logFile
    fi
}

#function to list files in a directory
listFiles() 
{
    dir1=$1
    #checks if the entered parameter is directory or not
    if [ -d "$dir1" ]; then
        cd $dir1 && ls
        echo "Files for $dir1 listed $now" | tee -a $logFile
    else
        echo "Non-existent directory, create directory first $now" | tee -a $logFile
    fi
}

#function to list sub-directories in a directory
listDir() 
{
    dir1=$1
     #checks if the entered parameter is directory or not
    if [ -d "$dir1" ]; then
        cd $dir1 && ls -d */
        echo "directories for $dir1 listed $now" | tee -a $logFile
    else
        echo "Non-existent directory, create directory first $now" | tee -a $logFile
    fi
}
#listDir /home/shitunjay/Desktop
#function to list all files and directories in a directory
listAll()
{
     #checks if the entered parameter is directory or not
    if [ -d "$dir1" ]; then
        cd $dir1 && ls -a
        echo "all files and directories for ${dir1} listed $now"  | tee -a $logFile
    else
        echo "Non-existent directory, create directory first $now" | tee -a $logFile
    fi
}
