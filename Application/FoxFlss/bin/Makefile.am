all:
	@if test "$(prefix)" = "/usr"; then \
		echo "nothing to do"; \
	else \
		echo "nothing to do"; \
	fi

install-data-hook:
	@if test "$(prefix)" = "/usr"; then \
		cp FoxFlss $(prefix)/bin; \
		chmod u=rwx,go=rx $(prefix)/bin/FoxFlss; \
	else \
		$(MKDIR_P) $(prefix)/usr/bin; \
		cp FoxFlss $(prefix)/usr/bin; \
	fi

uninstall-hook:
	@if test "$(prefix)" = "/usr"; then \
		cd $(prefix)/bin && rm -f FoxFlss; \
	else \
		rm -rf $(prefix)/usr; \
	fi
