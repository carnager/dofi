ifndef PREFIX
  PREFIX=/usr/local
endif

install:
	install -Dm755 dofi $(DESTDIR)$(PREFIX)/bin/dofi
	install -Dm644 config.dofi $(DESTDIR)$(PREFIX)/share/doc/dofi/config.example
	install -Dm644 config.dofi $(DESTDIR)/etc/dofi.conf
	install -Dm644 README.md $(DESTDIR)$(PREFIX)/share/doc/dofi/README.md
