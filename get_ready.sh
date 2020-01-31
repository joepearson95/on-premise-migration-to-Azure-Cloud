sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install python3-venv

cd cloud_site

python3 -m venv dissVM
source dissVM/bin/activate
pip install flask
export FLASK_APP=application.py
flask run
