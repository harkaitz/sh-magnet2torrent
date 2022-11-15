DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/magnet2torrent'; cp bin/magnet2torrent $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
## -- license --
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-magnet2torrent/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-magnet2torrent
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-magnet2torrent
## -- license --
