DESTDIR     =
PREFIX      =/usr/local
all:
clean:
install:
## -- license --
ifneq ($(PREFIX),)
install: install-license
install-license: LICENSE
	@echo 'I share/doc/sh-magnet2torrent/LICENSE'
	@mkdir -p $(DESTDIR)$(PREFIX)/share/doc/sh-magnet2torrent
	@cp LICENSE $(DESTDIR)$(PREFIX)/share/doc/sh-magnet2torrent
endif
## -- license --
## -- install-sh --
install: install-sh
install-sh:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@echo 'I bin/magnet2torrent'; cp bin/magnet2torrent $(DESTDIR)$(PREFIX)/bin
## -- install-sh --
