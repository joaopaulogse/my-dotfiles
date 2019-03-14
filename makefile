

install:
	@git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

links:
	@ln -s .tmux.conf ~/.tmux.conf
	@ln -s .vimrc ~/.vimrc
	@ln -s .config ~/.config
copy:
	@cp .tmux.conf ~/.tmux.conf
	@cp .vimrc ~/.vimrc
	@cp .config/tmuxinator ~/.config/tmuxinator/



