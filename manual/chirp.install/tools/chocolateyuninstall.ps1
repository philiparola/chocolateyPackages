﻿$package = 'CHIRP.install'
$file = (Get-ItemProperty HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\CHIRP UninstallString).UninstallString;
Uninstall-ChocolateyPackage $package 'EXE' -SilentArgs '/S' -file $file