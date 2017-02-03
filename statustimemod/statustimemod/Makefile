include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = statustimemod
statustimemod_FILES = stmRootListController.m
statustimemod_INSTALL_PATH = /Library/PreferenceBundles
statustimemod_FRAMEWORKS = UIKit
statustimemod_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/statustimemod.plist$(ECHO_END)
