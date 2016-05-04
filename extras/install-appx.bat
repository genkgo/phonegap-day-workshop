:: Powershell

echo "To get your mobile device ip, run "
echo "    WinAppDeployCmd devices"
set /p ip=Enter Device IP:
set /p appx_path=Enter path to appx file:

WinAppDeployCmd install -file "%appx_path%" -ip "%ip%"

 ::example: WinAppDeployCmd install -file platforms/windows/AppPackages/CordovaApp.Windows10_0.0.1.0_anycpu_debug_Test/CordovaApp.Windows10_0.0.1.0_anycpu_debug.appx -ip 127.0.0.1