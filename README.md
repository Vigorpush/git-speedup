# git-speedup
Speed up git bash on windows
# How is work

```bash
GIT_TRACE=1 git stash
```
##### Activate Git's own tracing, because the Git bash executes subcommands, this will be executes internally
```bash
git config --global core.preloadindex true
```

##### Enable git preload file index
```bash
git config core.ignoreStat true
```
##### Avoid inspecting large working trees' modification times, <font color="red">Status: **Not yet implemented**</font>
```bash
git config core.fscache true
```
##### Enble file system cache for local

```bash
git config --global core.fscache true
```
##### Enble file system cache for global

```bash
git config --global gc.auto 256
```
##### Cleanup unnecessary files and optimize the local repository

# How to use this

## Just run this sh file by double click

## Using code to run this in git
```bash
sh Script.sh
```
### Plan A
```bash
# Set the execution for all the users for the given script
chmod +x Script.sh

# Execute the script
./Script.sh
```

### Plan B
```bash
# Set the execution for all the users for the given script
chmod 777 /PATHTOFILE/Script.sh

# Execute the script
/PATHTOFILE/Script.sh
```

## Another way to make git faster (From online)
I found the following change on a StackOverflow post that seems to work way faster:

Go to your git install directory (Mine is c:\Program Files (x86)\Git
In the etc folder, open the file 'profile' in a text editor
This file is executed when the bash shell is initialized, you can do a lot of customization in here
Near the bottom, you will find some commands related to setting a variable called PS1 (PS1 = ...)
Either replace it or just append the following lines after it

```bash
fast_git_ps1 ()                                                                              
{                                                                                            
    printf -- "$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ {\1} /')"    
}                                                                                            

PS1='\[\033]0;$MSYSTEM:\w\007                                                                
\033[32m\]\u@\h \[\033[33m\w$(fast_git_ps1)\033[0m\]                                         
$
```
