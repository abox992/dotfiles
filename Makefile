all:
	stow -R . -t ~/.config

clean:
	stow -D . -t ~/.config 
