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

all:
	$(MKDIR_P) $(prefix)/usr/lib/systemd/system; \
	cp $(dist_services) $(prefix)/usr/lib/systemd/system; \
	$(MKDIR_P) $(prefix)$(FoxFlss_datadir); \
	cp $(FoxFlss_data_SCRIPTS) $(prefix)$(FoxFlss_datadir); \
	$(MKDIR_P) $(prefix)$(FoxFlss_userdir); \
	cp $(FoxFlss_user_SCRIPTS) $(prefix)$(FoxFlss_userdir); \
	$(NULL)

install-data-hook:
	install -D $(prefix)/usr/lib/systemd/system/$(dist_services) /usr/lib/systemd/system; \
	chmod u=rw,g=r,o=r /usr/lib/systemd/system/$(dist_services); \
	$(MKDIR_P) $(DESTDIR)$(FoxFlss_datadir); \
	install -D $(prefix)$(FoxFlss_datadir)/$(FoxFlss_data_SCRIPTS) $(DESTDIR)$(FoxFlss_datadir); \
	chmod go+rx $(DESTDIR)$(FoxFlss_datadir); \
	$(MKDIR_P) $(DESTDIR)$(FoxFlss_userdir); \
	cd $(DESTDIR)$(FoxFlss_userdir); \
	install -D $(prefix)$(FoxFlss_userdir)/$(FoxFlss_user_SCRIPTS) $(DESTDIR)$(FoxFlss_userdir); \
	chmod go+rx $(DESTDIR)$(FoxFlss_userdir); \
	$(LN_S) -s -f DW5932e 105b:e0f5; \
	$(LN_S) -s -f DW5932e 105b:e0f9; \
	$(NULL)

uninstall-hook:
	rm -rf /opt/foxconn/; \
	rm -rf /usr/lib/systemd/system/$(dist_services); \
	$(NULL)

