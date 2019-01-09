#     SOME_NEW_DEB = some_new_deb.deb
#     $(SOME_NEW_DEB)_URL = https://url/to/this/deb.deb
#     SONIC_ONLINE_DEBS += $(SOME_NEW_DEB)

COLLECTD_DEB = collectd_5.7.0-3~bpo7+2_amd64.deb
COLLECTD_CORE_DEB = collectd-core_5.7.0-3~bpo7+2_amd64.deb
LIBGCRYPT11_DEB = libgcrypt11_1.5.0-5+deb7u6_amd64.deb

$(COLLECTD_DEB)_URL = http://ftp.debian.org/debian/pool/main/c/collectd/$(COLLECTD_DEB)
$(COLLECTD_CORE_DEB)_URL = http://ftp.debian.org/debian/pool/main/c/collectd/$(COLLECTD_CORE_DEB)
$(LIBGCRYPT11_DEB)_URL = http://security.debian.org/debian-security/pool/updates/main/libg/libgcrypt11/$(LIBGCRYPT11_DEB)

ifeq ($(ENABLE_COLLECTD_SERVICE), y)
	SONIC_ONLINE_DEBS += $(COLLECTD_DEB) $(COLLECTD_CORE_DEB) $(LIBGCRYPT11_DEB)
endif

