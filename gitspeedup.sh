echo "Test!"
git config --global core.preloadindex true
git config --global core.fscache true
git config --global gc.auto 256
git config --global core.ignoreStat true
#Enable the filesystem cache
#git config core.fscache true

#Avoid inspecting large working trees' modification times
#git config core.ignoreStat true

#Activate Git's own tracing
#GIT_TRACE=1 git stash
