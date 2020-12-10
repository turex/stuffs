#Faccio la mia domanda
echo -n "Would you sync repo? Type 'yes' if you want sync "

#Recupero la risposta
read RISPOSTA

#Stampo a video il risultato
if [ ${RISPOSTA} = "yes" ]
then
  repo sync -c --no-tags --no-clone-bundle -j6
fi
source build/envsetup.sh
export USE_CCACHE=1
ccache -M 50G 
lunch lineage_grouper-userdebug
make -j6



#export USE_CCACHE=1 && export CCACHE_BASEDIR=/source && export CCACHE_DIR=/source/.ccache && ccache -M 50G && lunch lineage_grouper-userdebug && make -j6
