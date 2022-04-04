
# Linux Assignment 1
- Create a utility(FileManager.sh) that will be able to
    
    -Create a Directory
    
    -Delete a Directory
    
    -List Content of a Directory
    
    -Only listfiles in a Directory
    
    -Only listDirs in a Directory
    
    -listAll(files and directory) 

i.e.
```
./FileManager.sh addDir <directory_to_create_in>  <directory_name_to_be_created>
./FileManager.sh listFiles <directory_for_listing_of_files>
./FileManager.sh listDirs <directory_to_list_directories>
./FileManager.sh listAll <directory_to_list_allfiles>
./FileManager.sh deleteDir <directory_to_delete_dir_from>  <directory_to_be_deleted>
```
- Update FileManager to process Files as well
    
    -Create a file
    
    -Add content to file
    
    -Add conent at the begining of the file
    
    -Show top n lines of a file
    
    -Show last n lines of a file
    
    -Show contents of a specific line number
    
    -Show conteint of a specfific line number range
    
    -Move/Copy file from one location to another
    
    -Delete file
```
i.e.
./FileManager.sh addFile <directory_to_create_file_in>  <fileame_to_be_created>
./FileManager.sh addContentToFile <directory_file_is_in>  <filename_to_add_content_in>  "Content_to_be_added"
./FileManager.sh addContentToFileBegining <directory_file_is_in>  <filename_to_add_content_in> "Content_to_be_added"
./FileManager.sh showFileBeginingContent <directory_file_is_in>  <filename_to_show_content> <line_number>
./FileManager.sh showFileEndContent <directory_file_is_in>  <filename_to_show_content_from>  <line_number> 
./FileManager.sh showFileContentAtLine <directory_file_is_in>  <filename_to_show_content>  <line_number>
./FileManager.sh showFileContentForLineRange <directory_file_is_in>  <filename_to_show_content_from> <from_line> <to_line>
./FileManager.sh moveFile <filename_with_absolute_path> <directory_to_move_file_in>
./FileManager.sh copyFile <filename_with_absolute_path> <directory_to_copy_file_to>
./FileManager.sh clearFileContent <directory_file_is_in>  <file_to_clearcontent_from>
./FileManager.sh deleteFile <directory_file_is_in> <file_to_be_deleted>
```
# Info
There are three shell script files in this project
- FileManager.sh is main script of the project
- file.sh is script for file manipulation
- directory.sh is script for directory manipulation

## Run Locally

Clone the project

```bash
  git clone https://gitlab.com/ot-devops-ninja/batch-xiv/linux.git/shitunjay
```

Go to the project directory

```bash
  cd project_directory
```

Give Permission(permission can be changed accordingly, here permission is only given to user)

```bash
  chmod u+x FileManager.sh
  chmod u+x directory.sh
  chmod u+x file.sh
```

Run the script
```
./FileManager.sh function_name parameters
```

# Examples

- Example 1
    ```
        ./FileManager.sh addDir /home/shitunjay/Desktop Apex

    Here 
        FileManager.sh >> script file name
        addDir >> function name
        /home/shitunjay/Desktop >> Directory in which we want to create directory
        Apex >>Name of directory that we want to create
    ```
- Example 2
  ```
        ./FileManager.sh showFileContentForLineRange /home/shitunjay/Desktop Ape 2 5

    Here
        FileManager.sh >> script file name
        showFileContentForLineRange >> function name
        /home/shitunjay/Desktop >> Directory where our file is in
        Ape >> filename
        2 >> LineNumber to display content from line 2
        5 >> lineNUmber to display content to line 5
  ```

# Author

[@shitunjay](https://gitlab.com/shitunjay)
