echo "Start To Speed Up Git On your Windows Machine!"

echo "Enable git preload file index"
git config --global core.preloadindex true #Enable git preload file index

echo "Enable git cache filesystem "
git config --global core.fscache true #Enable the filesystem cache

echo "Cleanup unnecessary files and optimize the local repository"
git config --global gc.auto 256 #Set auto clean to be 256, to save memory

echo "Avoid inspecting large working trees' modification times"
git config --global core.ignoreStat true

echo "Activate Git's own tracing"
GIT_TRACE=1 git stash #Activate Git's own tracing

echo "Finishing Optimazing Git"

