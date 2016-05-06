
all:
	if [ ! -d "iTerm2" ]; then git clone https://github.com/gnachman/iTerm2; fi
	cd iTerm2; git reset --hard; git pull; git apply ../noborder-padding.patch; make;
	mv iTerm2/build/Development/iTerm2.app/ iTerm2-patched.app/
