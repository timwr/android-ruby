
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+="ac_cv_func_setgroups=no ac_cv_func_setresuid=no ac_cv_func_setreuid=no --enable-rubygems --disable-install-rdoc"
# The gdbm module seems to be very little used:
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" --without-gdbm"
# Do not link in libcrypt.so if available (now in disabled-packages):
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" ac_cv_lib_crypt_crypt=no"
# Fix DEPRECATED_TYPE macro clang compatibility:
TERMUX_PKG_EXTRA_CONFIGURE_ARGS+=" rb_cv_type_deprecated=x"

		#--disable-rpath --disable-rpath-hack \
termux_step_host_build () {
	cd $TERMUX_PKG_SRCDIR
	./configure
	make
	make install
}

termux_step_make () {
	echo "step"
	#make distclean
	#make
	#make install
}

