################################################################################
#
# vitetris
#
################################################################################

VITETRIS_VERSION = 0.57
VITETRIS_SOURCE = vitetris-$(VITETRIS_VERSION).tar.gz
VITETRIS_SITE = http://www.victornils.net/tetris/
VITETRIS_INSTALL_TARGET = YES


define VITETRIS_CONFIGURE_CMDS
	cd $(@D) && ./configure --disable-xlib
endef

define VITETRIS_BUILD_CMDS
	$(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef


define VITETRIS_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/tetris $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))