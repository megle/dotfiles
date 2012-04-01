install: install-vim install-zsh install-osx-defaults install-terminal-settings

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zshrc ~/.zshrc

install-osx-defaults:
	sh `pwd`/osx/defaults.sh

install-terminal-settings:
	cp ~/Library/Preferences/com.apple.Terminal.plist osx/old-settings.bak
	cp osx/com.apple.Terminal.plist ~/Library/Preferences
	@echo "Old terminal settings were saved into the osx folder"

dump-terminal-settings:
	cp ~/Library/Preferences/com.apple.Terminal.plist osx
	plutil -convert xml1 osx/com.apple.Terminal.plist

