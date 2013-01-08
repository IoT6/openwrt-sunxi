define KernelPackage/sun4i-wemac
  SUBMENU:=$(OTHER_MENU)
  TITLE:=SUN4I WEMAC ethernet driver
  DEPENDS:=@TARGET_sunxi
  KCONFIG:=CONFIG_WEMAC_SUN4I
  FILES:=$(LINUX_DIR)/drivers/net/ethernet/sun4i/sun4i_wemac.ko
  AUTOLOAD:=$(call AutoLoad,10,sun4i_wemac)
endef

define KernelPackage/sun4i-wemac/description
  This package contains the ethernet driver for sun4i platform.
endef

$(eval $(call KernelPackage,sun4i-wemac))

