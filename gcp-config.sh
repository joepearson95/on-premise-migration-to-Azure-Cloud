sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python3-venv
sudo apt-get -y install python3-dev
sudo apt-get -y install nginx
sudo apt-get -y install git
sudo apt-get -y install python-setuptools python-dev build-essential
sudo easy_install pip
sudo pip install flask

sed -i '15,16 s/^/#/' cloud_site/cloud_app/models.py
sed -i '17 s/^/#/' cloud_site/requirements.txt
cd cloud_site
sudo pip install -r requirements.txt
sudo python gcp-run.py
