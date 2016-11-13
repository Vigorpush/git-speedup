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

echo "Avoid inspecting large working trees' modification times"
git config --global core.ignoreStat true

# These can be worked around by running git update-index --really-refresh after performing such operations. I hope that git add will be changed to stage changes to assume-unchanged files, which would remove this only complication

# https://git-annex.branchable.com/tips/assume-unstaged/

echo "Finishing Optimazing Git"

echo "Please use git update-index --really-refresh when you make any changes"