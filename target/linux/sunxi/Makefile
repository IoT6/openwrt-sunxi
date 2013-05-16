#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=sunxi
BOARDNAME:=Allwinner A10
FEATURES:=fpu usb ext4 display
SUBTARGETS=cubie

CFLAGS:=-O2 -pipe -march=armv7-a -mfloat-abi=hard -mfpu=neon \
	-ftree-vectorize -mvectorize-with-neon-quad -mcpu=cortex-a8 -mtune=cortex-a8 

MAINTAINER:=Andrew Andrianov <andrew@ncrmnt.org>

LINUX_VERSION:=3.4.43

DEFAULT_PACKAGES += uboot-envtools

include $(INCLUDE_DIR)/target.mk

define Target/Description
	Images for Allwinner A10 based boards
endef

#KERNELNAME:="uImage"

#Workaround module loading problems, so that uImage is created before modules
#TODO: ask at the mailing list 

define Kernel/CompileModules
	rm -f $(LINUX_DIR)/vmlinux $(LINUX_DIR)/System.map
	+$(MAKE) $(KERNEL_MAKEOPTS) uImage modules
endef


$(eval $(call BuildTarget))
