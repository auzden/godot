move /Y custom.py custom.py.android
scons -j8 platform=windows vsproj=yes target=release_debug bits=64
move /Y custom.py.android custom.py