pushd platform\android\java
call gradlew cleanGodotTemplates
popd

scons -j8 platform=android target=release_debug tools=no android_arch=arm64v8
REM scons platform=android target=release android_arch=arm64v8

scons -j8 platform=android target=release_debug tools=no android_arch=armv7
REM scons platform=android target=release android_arch=armv7

pushd platform\android\java
call gradlew generateGodotTemplates
popd