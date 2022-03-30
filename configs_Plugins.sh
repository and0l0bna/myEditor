#!/bin/ash

function setting() {
	mv ./vim_settings $HOME/.vimrc
	git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
	git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
	git clone --depth 1 https://github.com/lifepillar/vim-mucomplete.git ~/.vim/pack/plugins/start/vim-mucomplete
}

di=$(pwd)

setting
cd ../
echo -e "\t\e[0;31m*** Deleting files ***"
sleep 3
rm -rf "./${di##*/}"
