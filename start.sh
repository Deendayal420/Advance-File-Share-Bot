if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/deendayal420/File_store_bot /File_store_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file_store_bot
fi
cd /file_store_bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
