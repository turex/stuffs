if [[ -d $HOME/Desktop ]]
then
    DIR=$HOME/Desktop
else
    DIR=$HOME/Scrivania
fi
curl -sL https://github.com/turex/stuffs/raw/main/backup_plasma.tar -o $DIR/config.tar
cd $DIR/backup_plasma
cp -rf * ~/.config

