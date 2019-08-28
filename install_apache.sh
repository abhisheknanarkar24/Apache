#!/bin/bash
#####################################################################################
# Date            Version            Change
# 13/05/2019      2.0.1              Created (current)
#####################################################################################
#repository_path=$1
#repository_name=$2

#create local repository file
sudo touch "/etc/yum.repo.d/$2.repo"
sudo cat > "/etc/yum.repo.d/$2.repo" <<EOL
[$2]
baseurl = file://$1
enabled = 1
gpgcheck = 0
name = This is local repository to install $2
EOL
  echo "$2 repository created"
sudo yum -y install $2
sudo systemctl enable $2
  echo "'$2 service is installed successfully"
