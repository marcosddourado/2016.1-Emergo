
#!/bin/bash

echo "Ubuntu 16.04"
echo "Setting up the development environment"
sleep 1

echo "Enter your password"
sudo apt-get update
echo "Checking if java is installed"
pacote=$(dpkg --get-selections | grep oracle-java8-set-default)
sleep 2
if [ -n "$pacote" ] ;
then echo
     echo "Package already installed"
else echo
     sudo add-apt-repository ppa:webupd8team/java
     echo "Setting up the J environment"
     sudo apt install oracle-java8-installer
     sudo update-alternatives --config java
     echo "export JAVA_HOME=\"/usr/lib/jvm/java-8-oracle\"" >> ~/.bashrc
     source ~/.bashrc
     echo "JAVA_HOME: $JAVA_HOME"
fi

echo "Checking if android studio is installed"
pacote=$(dpkg --get-selections | grep android-studio)
sleep 2
if [ -n "$pacote" ] ;
then echo
     echo "Package already installed"
else echo
     
  echo "Downloading Android Studio"
  echo "Setting up android environment"
  sudo apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6
  sudo add-apt-repository ppa:paolorotolo/android-studio
  sudo apt-get update
  sudo apt-get install oracle-java8-installer 
  sudo apt-get install android-studio
  echo "Creating shortcut to desktop"
  echo -e "[Desktop Entry]\nVersion=1.0\nType=Application\nName=Android Studio\nExec='/opt/android-studio/bin/studio.sh' %f\nIcon=/opt/android-studio/bin/studio.png\nCategories=Development;IDE;\nTerminal=false\nStartupNotify=true\nStartupWMClass=android-studio" >> ~/.local/share/applications/androidstudio.desktop

fi