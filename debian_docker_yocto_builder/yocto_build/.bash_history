ls
touch foo
exit
ls
rm foo
git clone git://git.yoctoproject.org/poky.git poky
cd poky/
dir
git checkout -b pyro yocto-2.3.1
git branch --set-upstream-to origin/pyro
git status
git pull
. oe-init-build-env
nano
sudo apt-get install nano
nano conf/local.conf 
time bitbake core-image-minimal -c fetchall
ls
cd tmp/
ls
mc
sudo apt-get install mc
mc
exit
