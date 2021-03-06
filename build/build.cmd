@SET FrameworkDir=C:\Windows\Microsoft.NET\Framework64\
@SET FrameworkVersion=v4.0.30319
@SET FrameworkSDKDir=

@ECHO Setting environment for using Visual Studio

@SET PATH=%FrameworkDir%%FrameworkVersion%;%FrameworkSDKDir%;%PATH%

msbuild ..\mongo-client.sln /p:Platform=Win32;Configuration=Debug;CustomDefs=DISABLE_CRASH_DIALOGS /m:3
IF ERRORLEVEl 1 EXIT /b 1

msbuild ..\mongo-client.sln /p:Platform=Win32;Configuration=Release;CustomDefs=DISABLE_CRASH_DIALOGS /m:3
IF ERRORLEVEl 1 EXIT /b 1

msbuild ..\mongo-client.sln /p:Platform=x64;Configuration=Debug;CustomDefs=DISABLE_CRASH_DIALOGS /m:3
IF ERRORLEVEl 1 EXIT /b 1

msbuild ..\mongo-client.sln /p:Platform=x64;Configuration=Release;CustomDefs=DISABLE_CRASH_DIALOGS /m:3
IF ERRORLEVEl 1 EXIT /b 1

