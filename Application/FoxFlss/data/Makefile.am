# Directory for user-enabled tools
FoxFlss_dir = /opt/foxconn
FoxFlss_datadir = $(FoxFlss_dir)/data
FoxFlss_userdir = $(FoxFlss_dir)/fcc-unlock.d

FoxFlss_data_SCRIPTS = \
	DW5932e_RF.dat \
	$(NULL)

FoxFlss_user_SCRIPTS = \
	DW593Xe \
	$(NULL)

dist_services = FoxFlss.service

conf_service = test-quick-suspend-resume.conf

all:
	@if test "$(prefix)" = "/usr"; then \
		echo "nothing to do"; \
	else \
		echo "nothing to do"; \
	fi

install-data-am:
	@$(NORMAL_INSTALL)
	$(MAKE) $(AM_MAKEFLAGS) install-data-hook

install-data-hook:
	@if test "$(prefix)" = "/usr"; then \
		cp $(dist_services) $(prefix)/lib/systemd/system; \
		chmod u=rw,g=r,o=r $(prefix)/lib/systemd/system/$(dist_services); \
		$(MKDIR_P) /etc/systemd/system/ModemManager.service.d; \
		cp $(conf_service) /etc/systemd/system/ModemManager.service.d; \
		chmod u=rw,g=r,o=r /etc/systemd/system/ModemManager.service.d/$(conf_service); \
		$(MKDIR_P) $(FoxFlss_datadir); \
		$(MKDIR_P) $(FoxFlss_userdir); \
		cp $(FoxFlss_data_SCRIPTS) $(FoxFlss_datadir); \
		chmod go+rx $(FoxFlss_datadir); \
		cp $(FoxFlss_user_SCRIPTS) $(FoxFlss_userdir); \
		chmod go+rx $(FoxFlss_userdir); \
		cd $(FoxFlss_userdir) && $(LN_S) -s -f $(FoxFlss_user_SCRIPTS) 105b:e0f5; \
		cd $(FoxFlss_userdir) && $(LN_S) -s -f $(FoxFlss_user_SCRIPTS) 105b:e0f9; \
		cd $(FoxFlss_userdir) && $(LN_S) -s -f $(FoxFlss_user_SCRIPTS) 105b:e11d; \
	else \
		$(MKDIR_P) $(prefix)/usr/lib/systemd/system; \
		$(MKDIR_P) $(prefix)/etc/systemd/system/ModemManager.service.d; \
		$(MKDIR_P) $(prefix)$(FoxFlss_datadir); \
		$(MKDIR_P) $(prefix)$(FoxFlss_userdir); \
		cp $(dist_services) $(prefix)/usr/lib/systemd/system; \
		chmod u=rw,g=r,o=r $(prefix)/usr/lib/systemd/system/$(dist_services); \
		cp $(conf_service) $(prefix)/etc/systemd/system/ModemManager.service.d; \
		chmod u=rw,g=r,o=r $(prefix)/etc/systemd/system/ModemManager.service.d/$(conf_service); \
		cp $(FoxFlss_data_SCRIPTS) $(prefix)$(FoxFlss_datadir); \
		chmod go+rx $(prefix)$(FoxFlss_datadir); \
		cp $(FoxFlss_user_SCRIPTS) $(prefix)$(FoxFlss_userdir); \
		chmod go+rx $(prefix)$(FoxFlss_userdir); \
		cd $(prefix)$(FoxFlss_userdir) && $(LN_S) -s -f $(FoxFlss_user_SCRIPTS) 105b:e0f5; \
		cd $(prefix)$(FoxFlss_userdir) && $(LN_S) -s -f $(FoxFlss_user_SCRIPTS) 105b:e0f9; \
		cd $(prefix)$(FoxFlss_userdir) && $(LN_S) -s -f $(FoxFlss_user_SCRIPTS) 105b:e11d; \
	fi

uninstall-am:
	@$(NORMAL_INSTALL)
	$(MAKE) $(AM_MAKEFLAGS) uninstall-hook

uninstall-hook:
	@if test "$(prefix)" = "/usr"; then \
		rm -rf $(FoxFlss_dir); \
		rm -rf $(prefix)/lib/systemd/system/$(dist_services); \
		rm -rf /etc/systemd/system/ModemManager.service.d; \
	else \
		rm -rf $(prefix)/opt; \
		rm -rf $(prefix)/usr; \
		rm -rf $(prefix)/etc; \
	fi
