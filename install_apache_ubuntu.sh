#!/bin/bash
#debian_package_src=$1
#debian_package_path=$2
sudo mkdir -p $2
sudo tar xvf $1 -C $2
#scanning packages of extracted directory to create indexes
sudo cat > "/tmp/update-mydebs" <<EOL
#!/bin/bash
cd $2
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz
EOL
chmod u+x /tmp/update-mydebs
#add source of debian packages
sudo cat >> "/etc/apt/sources.list" <<EOL
deb file:$2 ./
EOL
sudo apt-get update
sudo apt-get install -y --allow-unauthenticated apache2
sudo systemctl stop apache2
EOL
