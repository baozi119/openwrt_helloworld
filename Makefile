#
#helloworld makefile
#

include $(TOPDIR)/rules.mk

PKG_NAME:=helloworld
PKG_RELEASE:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/helloworld
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Hello World
endef

define Package/helloworld/description
 nothing, just test.
endef

define Build/Prepare
	$(INSTALL_DIR) $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Build/Configure
endef

#define Build/Compile
#	$(TARGET_CC) $(TARGET_CFLAGS) \
		-o $(PKG_BUILD_DIR)/helloworld $(PKG_BUILD_DIR)/helloworld.c
#endef

define Package/helloworld/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/helloworld $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,helloworld))
