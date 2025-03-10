AC_PREREQ(2.69)
AC_INIT([FoxFlss], [1.0.6], [fanice_luo@163.com], [FoxFlss])
AC_CONFIG_HEADERS([config.h])

AM_INIT_AUTOMAKE

AC_PROG_CC
AC_PROG_LN_S

PKG_PROG_PKG_CONFIG()

AC_PREFIX_DEFAULT([/usr])

# setup systemd unit dir for FoxFlss.service and extension of
# ModemManager.service; Snippet comes from `man 7 daemon`
AC_ARG_WITH([systemdsystemunitdir],
     [AS_HELP_STRING([--with-systemdsystemunitdir=DIR], [Directory for systemd service files])],,
     [with_systemdsystemunitdir=auto])
AS_IF([test "x$with_systemdsystemunitdir" = "xyes" -o "x$with_systemdsystemunitdir" = "xauto"], [
     def_systemdsystemunitdir=$($PKG_CONFIG --variable=systemdsystemunitdir systemd)

     AS_IF([test "x$def_systemdsystemunitdir" = "x"],
   [AS_IF([test "x$with_systemdsystemunitdir" = "xyes"],
    [AC_MSG_ERROR([systemd support requested but pkg-config unable to query systemd package])])
    with_systemdsystemunitdir=no],
   [with_systemdsystemunitdir="$def_systemdsystemunitdir"])])
AS_IF([test "x$with_systemdsystemunitdir" != "xno"],
      [AC_SUBST([systemdsystemunitdir], [$with_systemdsystemunitdir])])
AM_CONDITIONAL([HAVE_SYSTEMD], [test "x$with_systemdsystemunitdir" != "xno"])
# End of snippet

AC_CONFIG_FILES([
Makefile
FoxFlss/Makefile
FoxFlss/bin/Makefile
FoxFlss/data/Makefile
])
AC_OUTPUT

echo "
==============================================
System paths:
	prefix:                  ${prefix}
	exec_prefix:             ${exec_prefix}
	bindir:                  ${bindir}
	systemdsystemunitdir:    ${systemdsystemunitdir}"
echo ""
