# Directory for user-enabled tools
FoxFlss_datadir = /opt/foxconn/data
FoxFlss_userdir = /opt/foxconn/fcc-unlock.d

FoxFlss_data_SCRIPTS = \
	DW5932e_RF.dat \
	$(NULL)

FoxFlss_user_SCRIPTS = \
	DW5932e \
	$(NULL)

EXTRA_DIST = $(FoxFlss_user_SCRIPTS) $(FoxFlss_data_SCRIPTS)

dist_services = FoxFlss.service

install-exec-local:
	install -D $(dist_services) $(prefix)/lib/systemd/system; \
	chmod u=rw,g=r,o=r $(prefix)/lib/systemd/system/$(dist_services); \
	$(MKDIR_P) $(DESTDIR)$(FoxFlss_datadir); \
	cd $(DESTDIR)$(FoxFlss_datadir); \
	chmod go+rx $(DESTDIR)$(FoxFlss_datadir); \
	$(MKDIR_P) $(DESTDIR)$(FoxFlss_userdir); \
	cd $(DESTDIR)$(FoxFlss_userdir); \
	chmod go+rx $(DESTDIR)$(FoxFlss_userdir); \
	$(LN_S) -s -f DW5932e 105b:e0f5; \
	$(LN_S) -s -f DW5932e 105b:e0f9; \
	$(NULL)

uninstall-hook:
	rm -rf $(DESTDIR)$(FoxFlss_datadir); \
	rm -rf $(DESTDIR)$(FoxFlss_userdir); \
	rm -rf $(prefix)/lib/systemd/system/$(dist_services); \
	$(NULL)

