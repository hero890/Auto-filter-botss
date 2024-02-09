if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hero890/Auto-filter-botss /Auto-filter-botss
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-filter-botss
fi
cd /Auto-filter-botss
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
