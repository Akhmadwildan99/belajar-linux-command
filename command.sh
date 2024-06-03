### if you do not know where you are
pwd

### to make a directory
mkdir foo

### make a directory with multiple nested folder
mkdir foo/bar

### to make multiple folder
mkdir foo bar

### delete folder
rmdir foo

### delete multiple folder
rmdir foo bar

### but rmdir can be use if the folder is empty
### we can use rm command with options -rf
rm -rf foo bar

### create new file
touch foo
touch bar

### move file one or more to other directory
mv foo bar fruits # file foo and bar will move to fruits folder


### copy file to another file
touch foo
touch bar
cp foo bar

### copy folder you need to add the -r option to recursively the whole folder contents
mkdir fruits
mkdir cars
cp -r fruits cars


### open sintax
open <filename> # open the specific file
open . # open the whole directory (finder if you using the macos)
open .. # parent directory (finder if you using the macos)



### find command
find . -name '*.js' # to find any files under tree current with name (*=any) and have .js  # It is importent to use quote becaus * is special character

### find  with -type (type of symbol -type f for file, -type d for directory and -type l for links) and 
#-name (-name for sensitive search and -iname for case-insensitive). This command is still under tree current
find . -type d -name example-target
find . -type d -name fruits
find . -type f -name foo
find . -type f -iname FOO

### -or
find . -type d -name cars -or -name fruits

### -not -path (mengko sekk yo)
### find files that have more than 100 characters (bytes) in them 
find . -type f  -size +100c
### find files that have less than 100 characters (bytes) in them 
find . -type f  -size -100c

### find files that have more than 100 but smaller then 1MB
find . -type f  -size +100c -size -1M

### Search files edited more than 3 days ago
find . -type f -mtime +3

### Search files edited in the last 24H
find . -type f -mtime -1

### search than delete file with option -delete
find . -type f -name file-for-delete.txt -delete

### execute command on each result of the search [-exec cat {} \;]
find . -type f -name command.sh -exec cat {} \; #execute cat or print the content 

### Hard links ln uses for link from file to another file
ln <original> <link> 

### Soft link ln with option -s
ln -s <original> <link> 

#### The different between hard link and soft link is when we remove the original file. In the hardlink ####
#### we still access link file And soft link we can not access the link file ####

### gzip compress >> file will be add .gz extension by default
gzip filename

### decompress .gz file
gzip -d filename

### gunzip this command will be decompress .zg without -d option 
gunzip filename.gz

### -c will copy the content file .gz to another file
gunzip -c filename.gz > anotherfilename


### tar command
tar -cf archive.tar file1 file2 # -c option for create and -f option is used to write to file the archive

### tar extract -x is used to extract
tar -xf  archive.tar

### compressed tar file
tar -czf archive.tar.gz file1 file2 
