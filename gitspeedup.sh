echo "Start To Speed Up Git On your Windows Machine!"

echo "Activate Git's own tracing"
GIT_TRACE=1 git stash #Activate Git's own tracing

echo "Enable git preload file index"
git config --global core.preloadindex true #Enable git preload file index

echo "Enable Global git cache filesystem "
git config --global core.fscache true #Enable the filesystem cache

echo "Enable Local git cache filesystem "
git config core.fscache true

echo "Cleanup unnecessary files and optimize the local repository"
git config --global gc.auto 256 #Set auto clean to be 256, to save memory

echo "Enable inspecting small working trees' modification times"
git config core.ignoreStat false

# This feature works quite well with git-annex. Especially because git annex's files are immutable, so aren't going to change out from under it, this is a nice fit. If you have a very large tree and git status is annoyingly slow, you can turn it on:

echo "Finishing Optimazing Git"
