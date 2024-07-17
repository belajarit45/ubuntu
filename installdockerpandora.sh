1 sudo apt update 
2 sudo apt install apt-transport-https ca-certificates curl software-properties-common 
3 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - 
4 sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" 
5 sudo apt update 
6 apt-cache policy docker-ce 
7 sudo apt install docker.io 
8 sudo systemctl status docker 
9 sudo usermod -aG docker pandorabdg{USER} 
10 docker volume create portainer_data | docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce
