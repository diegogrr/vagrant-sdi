#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y python3-pip python3-venv nginx

# Criar python env
mkdir ~/myproject
cd ~/myproject
python3 -m venv myenv
source myenv/bin/activate
cp /vagrant/Flask/requirements.txt .
#pip3 freeze > requirements.txt
pip3 install -r requirements.txt
cp /vagrant/Flask/myproject.py .
cp /vagrant/Flask/wsgi.py .
deactivate


# Gunicorn systemd service
#gunicorn --bind 0.0.0.0:5000 wsgi:app --name mysite --workers 3 --daemon
#gunicorn --bind 0.0.0.0:5000 wsgi:app
sudo cp /vagrant/systemctl/myproject.service /etc/systemd/system/
sudo systemctl start myproject.service
sudo systemctl enable myproject.service

# Nginx
sudo cp /vagrant/Nginx/myproject.conf /etc/nginx/sites-available/myproject.conf
sudo ln -s /etc/nginx/sites-available/myproject.conf /etc/nginx/sites-enabled/
sudo systemctl restart nginx


