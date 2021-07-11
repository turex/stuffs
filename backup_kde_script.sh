cd ~/.config
if [[ -d $HOME/Desktop ]]
then
    DIR=$HOME/Desktop
else
    DIR=$HOME/Scrivania
fi
if [[ ! -d $DIR/backup_plasma ]]
then
    mkdir $DIR/backup_plasma
fi
cp -r kde* $DIR/backup_plasma
cp -r plasma* $DIR/backup_plasma
cd $DIR
tar -cvf backup_plasma.tar backup_plasma/

