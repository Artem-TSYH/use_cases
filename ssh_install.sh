sudo systemctl daemon-reload
sudo apt update -y
sudo apt install -y openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
