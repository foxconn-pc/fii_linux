dist_services = FoxFlss.service

install-exec-local:
	install -D $(dist_services) $(prefix)/lib/systemd/system; \
	cd $(prefix)/lib/systemd/system; \
	chmod u=rw,g=r,o=r $(dist_services); \
	$(NULL)

uninstall-hook:
	rm -rf $(prefix)/lib/systemd/system/$(dist_services)
