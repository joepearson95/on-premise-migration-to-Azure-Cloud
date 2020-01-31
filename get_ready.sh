sudo apt-get update
echo y | command
sudo apt-get upgrade
echo y | command
sudo apt-get install python3-venv
echo y | command

cd cloud_site

python3 -m venv dissVM
source dissVM/bin/activate
pip install -r requirements
export FLASK_APP=application.py
flask run
