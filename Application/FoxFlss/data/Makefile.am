ACLOCAL_AMFLAGS = -I m4

FoxFlss_dir = /opt/foxconn
FoxFlss_rfdatadir = $(FoxFlss_dir)/data
FoxFlss_fccunlockdir = $(FoxFlss_dir)/fcc-unlock.d
FoxFlss_suspenddir = $(FoxFlss_dir)/suspend

FoxFlss_rfdata_DATA = \
	DW5932e_RF.dat \
	DW5934e_RF.dat

FoxFlss_fccunlock_SCRIPTS = \
	DW593Xe

FoxFlss_suspend_SCRIPTS = \
	mm-options.sh

if HAVE_SYSTEMD
modemmanagerconfdir = $(systemdsystemunitdir)/ModemManager.service.d

systemdsystemunit_DATA = \
	FoxFlss.service

modemmanagerconf_DATA = \
	mm-suspend-resume-options.conf
endif

install-data-hook:
	cd $(DESTDIR)$(FoxFlss_fccunlockdir) && $(LN_S) DW593Xe 105b:e0f5
	cd $(DESTDIR)$(FoxFlss_fccunlockdir) && $(LN_S) DW593Xe 105b:e0f9
	cd $(DESTDIR)$(FoxFlss_fccunlockdir) && $(LN_S) DW593Xe 105b:e11d

uninstall-hook:
	rm -f $(DESTDIR)$(FoxFlss_fccunlockdir)/*
