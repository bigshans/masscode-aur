.PHONY: clean build
clean:
	rm -rf pkg src masscode_* masscode-*
build:
	rm -rf pkg src && makepkg -sf && makepkg --printsrcinfo > .SRCINFO
sha:
	makepkg -g
install:
	rm -rf pkg src && makepkg -sfi && makepkg --printsrcinfo > .SRCINFO
