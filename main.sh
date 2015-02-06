# I followed an instruction at [http://crunchbang.org/forums/viewtopic.php?id=23158]

# Remove old one
sudo apt-get remove xscreensaver

# Install dependencies to build xscreensaver
apt-get install libgd2-xpm libgd2-xpm-dev libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-dev libglade2-0 libglade2-dev libjpeg8-dev libxpm4 libxpm-dev libxt-dev

# During installation I got a message that the intltool is missing
apt-get install intltool

# Download xscreensaver sources
cd ~/download
wget http://www.jwz.org/xscreensaver/xscreensaver-5.32.tar.gz
tar -xvf xscreensaver-5.32.tar.gz

# Download new images from [http://www.mediafire.com/?s3olvdc9a9dhe3r]
# Put new images to the source directory
xscreensaver-5.32/utils/images/ 

# At the directory of xscreensaver-5.32
./configure
make
make install

# After the installation I couldn't lock screen with Win-L combination, getting the error:
# "failed to execute child process cb-lock"
# I found this solution
apt-get install cb-exit cb-lock

# Kill screensaver if necessary
# Look how runs the new one
xscreensaver &
