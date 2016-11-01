#!/bin/bash

echo "Ubuntu 16.04"
echo "Setting up the development environment"
sleep 1

echo "Enter your password"
sudo apt-get update
sudo add-apt-repository ppa:webupd8team/java

echo "Setting up the J environment"
sudo apt install oracle-java8-installer
sudo update-alternatives --config java
echo "export JAVA_HOME=\"/usr/lib/jvm/java-8-oracle\"" >> ~/.bashrc
source ~/.bashrc
echo "JAVA_HOME: $JAVA_HOME"


echo "Setting up android environment"
cd 
sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
cd ~/Downloads/
echo "Downloading Android Studio"
wget https://dl.google.com/dl/android/studio/ide-zips/2.2.1.0/android-studio-ide-145.3330264-linux.zip?hl=pt-br
sudo apt-get install unzip
unzip android-studio-ide-145.3330264-linux.zip?hl=pt-br
./android-studio/bin/studio.sh
