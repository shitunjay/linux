#!/bin/bash
source ./directory.sh
source ./file.sh
#set -x
function=$1
dir1=$2
dir2=$3
file=$3
cont=$4
lineNumber=$4
lineNumberto=$5
filename=$2
destination=$3
case $function in 
addDir) addDir $dir1 $dir2;;
delDir) delDir $dir1 $dir2;;
listFiles) listFiles $dir1;;
listDir) listDir $dir1;;
listAll) listAll $dir1;;
createFile) createFile $dir1 $file;;
addContentToaFile) addContentToaFile $dir1 $file "$cont";;
addContentToFileBeginning) addContentToFileBeginning $dir1 $file "$cont";;
showFileContentAtLine) showFileContentAtLine $dir1 $file $lineNumber;;
topnlines ) topnlines $dir1 $file $lineNumber;;
lastnlines) lastnlines $dir1 $file $lineNumber;;
clearFileContent) clearFileContent $dir1 $file;;
deleteFile) deleteFile $dir1 $file;;
copyFile) copyFile $filename $destination;;
moveFile) moveFile $filename $destination;;
showFileContentAtLineRange) showFileContentAtLineRange $dir1 $file $lineNumber $lineNumberto;;

*) echo "Please pass parameters according to the below help section:
dir1 >> directory to list, create, delete in
dir2 >> directory to be created and deleted
For Directory
./FileManager.sh addDir dir1 dir2
./FileManager.sh listFiles dir1
./FileManager.sh listDirs dir1
./FileManager.sh listAll dir1
./FileManager.sh deleteDir dir1 dir2

file >> file to be manipulated
dir1>> directory for file
For File
./FileManager.sh addFile /tmp/dir1 file1.txt
./FileManager.sh addContentToFile /tmp/dir1 file1.txt Content
./FileManager.sh addContentToFileBegining /tmp/dir1 file1.txt Content
./FileManager.sh showFileBeginingContent /tmp/dir1 file1.txt 5
./FileManager.sh showFileEndContent /tmp/dir1 file1.txt 5
./FileManager.sh showFileContentAtLine /tmp/dir1 file1.txt 10
./FileManager.sh showFileContentForLineRange /tmp/dir1 file1.txt 5 10
./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/
./FileManager.sh moveFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
./FileManager.sh copyFile /tmp/dir1/file1.txt /tmp/dir1/
./FileManager.sh copyFile /tmp/dir1/file1.txt /tmp/dir1/file2.txt
./FileManager.sh clearFileContent /tmp/dir1 file1.txt
./FileManager.sh deleteFile /tmp/dir1 file1.txt"
esac