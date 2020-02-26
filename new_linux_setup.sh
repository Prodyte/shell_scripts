#!/bin/bash

#installing tools
#sudo apt-get update
#sudo apt-get install git npm build-essentials git-email

#installing chrome
read -p "Install Google-Chrome (Yes/No): " CHOICE
if [[ "$CHOICE" -eq "yes" ]]
then
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt-get update
	sudo apt-get install google-chrome-stable
fi


#installing vscode





# installing dot config files

#git clone .......
#
#
#

