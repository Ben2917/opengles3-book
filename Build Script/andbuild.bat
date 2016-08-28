

:: Android build script version 1

@echo off
call android.bat update project -p . -t android-18
echo going into jni
cd jni
echo In jni directory.
call ndk-build
echo Build executed.
cd ..
echo Exited jni directory.
call ant debug
echo Ant debug executed.
call adb install -r bin/NativeActivity-debug.apk
echo App installation executed.
