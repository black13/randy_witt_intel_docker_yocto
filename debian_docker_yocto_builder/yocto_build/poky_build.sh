#delete poky
if [ -d ./poky-thud ]; then rm -Rvf ./poky-thud; fi

#build a basic image.
git clone -b thud git://git.yoctoproject.org/poky.git poky-thud

cd poky-thud
git clone -b thud git://git.openembedded.org/meta-openembedded
git clone -b thud https://github.com/meta-qt5/meta-qt5.git

#mkdir bbb oe runner
mkdir /tmp/bbb
cd /tmp/bbb
git clone -b thud git://github.com/jumpnow/meta-bbb
mkdir -p /tmp/bbb/build/conf
cd /tmp/bbb/build
cp /tmp/bbb/meta-bbb/conf/local.conf.sample /tmp/bbb/build/conf/local.conf
cp /tmp/bbb/meta-bbb/conf/bblayers.conf.sample /tmp/bbb/build/conf/bblayers.conf

cd ~/poky-thud
source ./oe-init-build-env /tmp/bbb/build
cd /tmp/bbb/build
bitbake core-image-minimal

