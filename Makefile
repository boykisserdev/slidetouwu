ARCHS = armv7 armv7s
TARGET = iphone:clang:9.3:6.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = slidetouwu
slidetouwu_FILES = Tweak.xm
slidetouwu_FRAMEWORKS = Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
