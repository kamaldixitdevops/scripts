sudo mkdir -p /backup/nginx
sudo cp -rvf /etc/nginx/sites-enabled/* /backup/nginx
sudo cp -rvf /etc/nginx/nginx.conf /backup/nginx
sudo apt-get install software-properties-common python-software-properties -y
sudo add-apt-repository ppa:nginx/stable
sudo apt-get update -y
sudo apt-get install nginx -y
sudo service nginx reload
echo $(nginx -V)
