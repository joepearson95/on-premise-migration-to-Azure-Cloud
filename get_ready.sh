sudo apt-get update
sudo apt-get upgrade

mkdir flask_app
cd flask_app
touch application.py
touch requirements.txt

python3 -m venv dissVM
source venv/bin/activate
pip install -r requirements
export FLASK_APP=application.py
