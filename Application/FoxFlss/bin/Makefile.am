install-data-hook:
	cp FoxFlss $(prefix)/bin; \
	chmod u=rwx,go=rx $(prefix)/bin/FoxFlss; \
	$(NULL)

uninstall-hook:
	cd $(prefix)/bin && rm -f FoxFlss
