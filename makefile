.PHONY: clean build
build:
	rm -rf pkg src && makepkg -sf && makepkg --printsrcinfo > .SRCINFO
clean:
	rm -rf pkg src masscode_* masscode-* masscode.png
sha:
	proxychains -q makepkg -g
install:
	rm -rf pkg src && makepkg -sfi && makepkg --printsrcinfo > .SRCINFO
cp:
	makepkg --printsrcinfo > .SRCINFO && cp PKGBUILD masscode.desktop masscode.sh .SRCINFO ../aur/masscode
