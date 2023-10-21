if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Deendayal420/File_Store_Bot /File_Store_Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File_Store_Bot
fi
cd /File_Store_Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
