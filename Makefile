include $(TOPDIR)/rules.mk

PKG_NAME:=minieap
PKG_VERSION:=0.92.1
PKG_RELEASE:=1
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/2512500960/zzu-minieap.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=d0b770c2cb89f75d84667b8855ae16abcd74c445
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Extensible 802.1x client with Ruijie v3 (v4) plugin
	MAINTAINER:=updateing
	URL:=https://github.com/updateing/minieap
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/minieap $(1)/usr/sbin/

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/minieap.init $(1)/etc/init.d/minieap
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
