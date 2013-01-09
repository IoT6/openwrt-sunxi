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


define KernelPackage/sw-ahci-platform
  SUBMENU:=$(OTHER_MENU)
  TITLE:=Softwinner AHCI driver
  DEPENDS:=@TARGET_sunxi
  KCONFIG:=CONFIG_SW_SATA_AHCI_PLATFORM
  FILES:=$(LINUX_DIR)/drivers/ata/sw_ahci_platform.ko
  AUTOLOAD:=$(call AutoLoad,10,sw_ahci_platform)
endef

define KernelPackage/sw-ahci-platform/description
  This package contains the SATA driver for SoftWinner platform.
endef

$(eval $(call KernelPackage,sw-ahci-platform))

define KernelPackage/i2c-sunxi
  SUBMENU:=$(OTHER_MENU)
  TITLE:=sun4i i2c bus driver
  DEPENDS:=@TARGET_sunxi
  KCONFIG:=CONFIG_I2C_SUN4I
  FILES:=$(LINUX_DIR)/drivers/i2c/busses/i2c-sunxi.ko
  AUTOLOAD:=$(call AutoLoad,10,i2c-sunxi)
endef

define KernelPackage/sw-ahci-platform/description
  This package contains the I2C BUS driver for SoftWinner platform.
endef

$(eval $(call KernelPackage,i2c-sunxi))


define KernelPackage/sun4i-ir
  SUBMENU:=$(OTHER_MENU)
  TITLE:=sun4i ir driver
  DEPENDS:=@TARGET_sunxi
  KCONFIG:=CONFIG_IR_SUN4I
  FILES:=$(LINUX_DIR)/drivers/input/keyboard/sun4i-ir.ko
  AUTOLOAD:=$(call AutoLoad,10,sun4i-ir)
endef

define KernelPackage/sw-ahci-platform/description
  This package contains the IR receiver driver for SUN4I platform.
endef

$(eval $(call KernelPackage,sun4i-ir))


define KernelPackage/sun4i-codec
  SUBMENU:=$(OTHER_MENU)
  TITLE:=sun4i soc audio codec
  DEPENDS:=@TARGET_sunxi
  KCONFIG:=CONFIG_SND_SUN4I_SOC_CODEC
  FILES:=$(LINUX_DIR)/sound/soc/sun4i/sun4i-codec.ko
  AUTOLOAD:=$(call AutoLoad,10,sun4i-codec)
endef

define KernelPackage/sun4i-codec/description
  This package contains the audio codec driver for SUN4I platform.
endef

$(eval $(call KernelPackage,sun4i-codec))


#
# USB is a mess, and doesn't work as a module
#


