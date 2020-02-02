sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python3-venv
sudo apt-get -y install python3-dev
sudo apt-get -y install nginx
sudo apt-get -y install git

cd cloud_site

python3 -m venv dissVM
source dissVM/bin/activate
pip install -r requirements.txt
export FLASK_APP=application.py
flask run -h 0.0.0.0
