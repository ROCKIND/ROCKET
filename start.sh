if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ROCKIND/ROCKET.git /ROCKET
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ROCKET
fi
cd /ROCKET
pip3 install -U -r requirements.txt
echo "Starting ROCKET🚀...."
python3 bot.py
