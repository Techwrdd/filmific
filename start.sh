if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Techwrdd/filmific.git /filmific
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filmific
fi
cd /filmific
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
