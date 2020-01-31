sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python3-venv

cd cloud_site

python3 -m venv dissVM
source venv/bin/activate
pip install -r requirements
export FLASK_APP=application.py
flask run
