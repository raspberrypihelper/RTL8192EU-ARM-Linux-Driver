echo Installing depedencies, need sudo password
sudo apt-get install -y git build-essential dkms linux-headers-$(uname -r)
cd
wget https://github.com/raspberrypihelper/RTL8192EU-ARM-Linux-Driver/raw/driver/rtl8192eu.zip
unzip rtl8192eu.zip
cd rtl8192eu
echo running "make" 
make ARCH=arm
echo Installing
sudo make install
cd ..
rm -R rtl8192eu
rm rtl8192eu.zip
echo Installed