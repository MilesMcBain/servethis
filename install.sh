#! /bin/bash
echo "copying servethis to ~/bin/servethis"
CLONE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p ~/bin
cp $CLONE_DIR/servethis ~/bin/
if [[ :$PATH: != *:"$HOME/bin":* ]] ; then
   echo "adding ~/bin to PATH."
   echo "PATH=\"\$PATH:$HOME/bin\"" >> ~/.profile
fi
