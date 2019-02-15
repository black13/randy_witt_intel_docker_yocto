docker build -t  yocto_build .
docker run -t -i -v "$PWD/yocto_build":/home/build yocto_build poky_build.sh


 
