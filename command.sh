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

### alias command is used when we want to assign one or multiple command to variable
alias ll='ls -al' ### be careful with quotes, if we use double quotes variable is resolved at definitio time, ussing single quotes it is resolved at invocation time
alias ### will execute list of alias
## And alias command is temporary except we define in the ~/.bashrc or ~/.zshrc or ~/.profile or ~/.bash_profile

### cat command
cat file1 ## read
cat file1 file2 ## read multiple
cat file1 file2 > file3 ## concatenate file1 and file2 into new file3
cat file1 file2 >> file3 # concatenate file1 and file2 into new file3


### less command is use when we will see the content of file but we do not want to edit the file
less filename

### tail command >>> print content the file
tail -f filename
tail -n 10 filename ## print 10 line
tail -n +10 filename ## print start line 10 

## wc command >>> see the count of word | line | bytes
ls -al | wc
wc -w filename
wc -l filename
wc -c filename

### grep command
grep word filename
grep -n word filename ## will output with the number
grep -nC word filename ## -C option means context

### sort command
sort filename ## sort asc
sort -r filename ## sort desc
sort -n filename ## sort with number
sort -u filename ## sort display unique / distinct  
ls | sort ## sort ls

### uniq command >> combine with sort
sort  nakama.txt | uniq ## output distinct
sort  nakama.txt | uniq -d ## -d option will print duplicates
sort  nakama.txt | uniq -u  ## -d option will print uniq
sort  nakama.txt | uniq -c ## -c option count character duplicate
sort  nakama.txt | uniq -c | sort -nr ## -n option sort by number and -r option reverse / desc 

### diff command
diff filename anotherfilename ## will show different content between two files
diff -y filename anotherfilename ## compare 2 files line by line
diff -u filename anotherfilename ## like git, display different versions

### echo command
echo "hello" ## displya hello
echo "hello" >> filename ## append hello in the filename
echo The cost is \$5 ## special character with \
echo $(ls -al) ## will execute command


### chown command
chown user filename ## change the user of file
chown user:group filename ## change the group of file
chrgp group filename ## change the group of file

### chmod command
chmod a+rwx filename ## add all read write executable for the file


### umask command
umask ### will return the combinaiton of numbers that contains roles u= g= o=
umask -s ### will return the roles u= g= o=

### du command >>> display size the directory as a whole
# -m display megabyte, -g gigabyte, -h display size human-readable, -a print the size of each file in the directories