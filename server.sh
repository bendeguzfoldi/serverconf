sudo apt-get update
sudo apt-get upgrade
export DEBIAN_FRONTEND=noninteractive
sudo -E apt-get -q -y install mysql-server
mysqladmin -u root password $1
