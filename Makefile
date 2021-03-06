all:
	$(CFG_ANDROID_NDK_PATH)/ndk-build -B
	$(CFG_ANDROID_SDK_PATH)/tools/android update project --name ServoAndroid --target 29 --path .
	ant debug

with-libs: 
	$(CFG_ANDROID_NDK_PATH)/ndk-build -B
	cp -a $(CFG_BUILD_HOME)sofile/*.so* ./libs/armeabi/
	cp -a ./extlibs/* ./libs/armeabi
	$(CFG_ANDROID_SDK_PATH)/tools/android update project --name ServoAndroid --target 29 --path .
	ant debug
