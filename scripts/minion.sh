whoami
wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
sudo bash -c "echo 'deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest bionic main' > /etc/apt/sources.list.d/saltstack.list"
sudo apt-get update -y
sudo apt-get install -y salt-minion