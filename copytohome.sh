cp ./.* ~/
DIRECTORY=~/.vim/colors/
if [ ! -d "$DIRECTORY" ]; then
  mkdir $DIRECTORY 
fi
cp colors/* $DIRECTORY
cp battery ~/
