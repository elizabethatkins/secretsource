Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}

if ($args[1]) { WMIC computersystem where caption=$(hostname) rename $args[1] }
sc start audiosrv
sc config Audiosrv start= auto
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Unity Hub.lnk" > out.txt 2>&1
del /f "C:\Users\Public\Desktop\Firefox.lnk" > out.txt 2>&1
md "C:\Users\Public\Desktop\Teohook Setup
md "C:\Users\Public\Desktop\Teohook Setup\VPN
md "C:\Users\Public\Desktop\Teohook Setup\Latest GT
md "C:\Users\Public\Desktop\Teohook Setup\Important
md "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector
curl -o "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\capcihook.rar" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/capcihook.rar > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\DLL and Injector\Extreme-Injector.exe" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/Extreme-Injector.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\VPN\Hide.Me-Setup.exe" https://hide.me/downloads/Hide.me-Setup-3.8.3.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Latest GT\Latest Growtopia.exe" https://ubistatic-a.akamaihd.net/0098/31789/GrowtopiaInstaller.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Important\items.dat" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/items.dat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Teohook Setup\Important\crashfix.txt" https://raw.githubusercontent.com/OnurCreed/secretsource/main/Files/Programs/crashfix.txt > out.txt 2>&1
