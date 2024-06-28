all:
	$(MKDIR_P) $(prefix)/usr/bin; \
	cp FoxFlss $(prefix)/usr/bin; \
	$(NULL)

install-data-hook:
	cp $(prefix)/usr/bin/FoxFlss /usr/bin; \
	chmod u=rwx,go=rx /usr/bin/FoxFlss; \
	$(NULL)

uninstall-hook:
	rm -f /usr/bin/FoxFlss; \
	$(NULL)
