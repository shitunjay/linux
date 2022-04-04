#!/bin/bash
#set -x
logFile=/home/shitunjay/Desktop/FileManager.txt
now=$(date)

#function to create file 
createFile() 
{
    dir1=$1
    file=$2
    if [ -d "$dir1" ]; then
        cd $dir1
        if [ -d "$file" ]; then
            echo "Directory with samename exists, choose a different filename $now"| tee -a $logFile
        exit
        fi
            if [ -f "$file" ]; then
                echo "$file already exists, choose a different filename $now"| tee -a $logFile
            else
                touch "$file"
                echo "$file created $now"| tee -a $logFile
            fi    
    else
        echo "$dir1 Does not exist, create directory first $now" | tee -a $logFile
    fi
}

#add content to file
addContentToaFile()
{
    dir1=$1
    file=$2
    cont=$3
    if [ -d "$dir1" ]; then
        cd $dir1
            if [ -f "$file" ]; then
                echo "$cont" >> $file
                echo "$cont added to $file $now" | tee -a $logFile
            else
                echo "$file does not exist, create a file first $now"|tee -a $logFile
            fi
    else 
        echo "$dir1 does not exist, create directory first $now"|tee -a $logFile
    fi        
}

#add content at the beginnig
addContentToFileBeginning()
{
    dir1=$1
    file=$2
    cont=$3
    if [ -d "$dir1" ]; then
        cd $dir1
            if [ -f "$file" ]; then
                precont=`cat $file`
                #echo "$precont"  confusion
                echo "$cont" > $file
                echo "$precont" > $file
                #cat <<< " $cont > $(cat $file) "
                #echo "$cont"  $file
                echo "$cont added to $file $now" | tee -a $logFile
            else
                echo "$file does not exist, create a file first $now" |tee -a $logFile
            fi
            exit
    else 
        echo "$dir1 does not exist, create directory first $now" |tee -a $logFile
    fi        
}

#function to display top n lines in a file
topnlines()
{
    dir1=$1
    file=$2
    top=$3
    if [ -d "$dir1" ]; then
        cd $dir1
            if [ -f "$file" ]; then
                #checks if the given input is integer or not
                if [[ "$top"=="[0-9]" ]]; then
                cat $file | head -n$3
                else
                    echo "$top Not a number $now" |tee -a $logFile
                fi

            else
                echo "$file does not exist, create a file first $now" |tee -a $logFile
            fi
            exit
    else 
        echo "$dir1 does not exist, create directory first $now" |tee -a $logFile
    fi
}

#function to display last n line of a file
lastnlines()
{
    dir1=$1
    file=$2
    top=$3
    if [ -d "$dir1" ]; then
        cd $dir1
            if [ -f "$file" ]; then
                if [[ "$top"=="[0-9]" ]]; then
                cat $file | tail -n$3
                else
                    echo "$top Not a number $now" |tee -a $logFile
                fi

            else
                echo "$file does not exist, create a file first $now" |tee -a $logFile
            fi
            exit
    else 
        echo "$dir1 does not exist, create directory first $now" |tee -a $logFile
    fi
}


#function to show content of specified number
showFileContentAtLine()
{
dir1=$1
file=$2
lineNumber=$3
if [ -d "$dir1" ]; then
    cd $dir1
    if [ -f "$file" ]; then
        cat $file | head -n $lineNumber | tail -1
        echo "File content for $file at line $lineNumber shown $now" >> $logFile
    else
        echo "File does not exist, create file first $now"|tee -a $logFile
    exit
    fi 
else
echo "$dir1 Does not exist, create directory first $now" |tee -a $logFile
fi
}

#to show file content from specific line range
showFileContentAtLineRange(){
    dir1=$1
    file=$2
    lineNumber=$3
    lineNumberto=$4
    if [ -d "$dir1" ]; then
        cd $dir1
        if [ -f "$file" ]; then
        cat $file |head -n $lineNumberto| tail +$lineNumber
        echo "File content for line range ${lineNumber}-${lineNumberto} shown $now" >> $logFile
        else
            echo "File does not exist, create file first $now"|tee -a $logFile
        exit
        fi
    else
    echo "$dir1 Does not exist, create directory first $now" |tee -a $logFile
    fi
}
#function to clear content of a file
clearFileContent()
{
    dir1=$1
    file=$2
    if [ -d "$dir1" ]; then
        cd $dir1
        if [ -f "$file" ]; then
            echo -n > $file
            echo "File content removed from ${file} $now" |tee -a $logFile
        else
        echo "File does not exist, create file first $now"|tee -a $logFile
        exit
        fi
    else
    echo "$dir1 Does not exist, create directory first $now" |tee -a $logFile
    fi
}
moveFile(){
    filename=$1
    destination=$2
    if [ -d "$destination" ]; then
        cd $destination
        if [ -f "$filename" ]; then
            mv $filename $destination
            echo "File $filename moved $now" | tee -a $logFile
        else
        echo "File does not exist, create file first $now" | tee -a $logFile
        fi
        exit
    else
    echo "$destination does not exist, create directory $now" | tee -a $logFile
    fi


}
copyFile(){
    filename=$1
    destination=$2
        if [ -d "$destination" ]; then
            cd $destination
                if [ -f "$filename" ]; then
                    cp $filename $destination
                    echo "File $filename copied $now" | tee -a $logFile
                else
                echo "File does not exist, create file first $now" | tee -a $logFile
                fi
                exit
        else
        echo "$destination does not exist, create directory $now" | tee -a $logFile
        fi
}
#function to delete a file
deleteFile(){
    dir1=$1
    file=$2
    if [ -d "$dir1" ]; then
        cd $dir1
        if [ -f "$file" ]; then
            rm $file
            echo "File Deleted $now" |tee -a $logFile
        else
             echo "File does not exist, create file first $now"|tee -a $logFile
        fi
        exit
    else
     echo "$dir1 Does not exist, create directory first $now" |tee -a $logFile 
    fi
}