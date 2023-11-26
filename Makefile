all:
	stow --verbose --target=$$HOME --restow .

del:
	stow --verbose --target=$$HOME --delete .
