sudo systemctl daemon-reload

sudo dnf update
#sudo apt update -y

sudo apt install -y openssh-server

sudo systemctl enable sshd 
#sudo systemctl enable ssh

sudo systemctl start sshd
#sudo systemctl start ssh
