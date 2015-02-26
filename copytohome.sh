cp .vimrc ~/.vimrc
cp .gvimrc ~/.gvimrc
DIRECTORY=~/.vim/colors/
if [ ! -d "$DIRECTORY" ]; then
  mkdir $DIRECTORY 
fi
cp colors/* $DIRECTORY
