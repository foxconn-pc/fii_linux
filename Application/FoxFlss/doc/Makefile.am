# Directory for user-enabled tools
FoxFlss_docdir = /opt/foxconn/doc
FoxFlss_userdir = /opt/foxconn/fcc-unlock.d

FoxFlss_doc_SCRIPTS = \
	DW5932e.tar.gz \
	$(NULL)

FoxFlss_user_SCRIPTS = \
	DW5932e \
	$(NULL)

EXTRA_DIST = $(FoxFlss_user_SCRIPTS) $(FoxFlss_doc_SCRIPTS)

install-data-hook:
	$(MKDIR_P) $(DESTDIR)$(FoxFlss_docdir); \
	$(MKDIR_P) $(DESTDIR)$(FoxFlss_userdir); \
	cd $(DESTDIR)$(FoxFlss_docdir); \
	cd $(DESTDIR)$(FoxFlss_userdir); \
	chmod go+rx $(DESTDIR)$(FoxFlss_docdir); \
	chmod go+rx $(DESTDIR)$(FoxFlss_userdir); \
	$(LN_S) -s -f DW5932e 105b:e0f5; \
	$(LN_S) -s -f DW5932e 105b:e0f9; \
	$(NULL)

uninstall-hook:
	rm -rf $(DESTDIR)$(FoxFlss_docdir); \
	rm -rf $(DESTDIR)$(FoxFlss_userdir); \
	$(NULL)

