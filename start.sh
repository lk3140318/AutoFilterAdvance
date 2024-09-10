if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/lk3140318/AutoFilterAdvance/blob/TECH_VJ/start.sh /AutoFilterAdvance
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilterAdvance
fi
cd /AutoFilterAdvance
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
