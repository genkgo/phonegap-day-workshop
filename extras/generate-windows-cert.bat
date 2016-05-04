:: Powershell

set /p publisher=Enter Publisher:
set /p expiry=Enter expiry (mm/dd/yyyy):
set /p filename=Enter output filename (no extension):
set /p password=Enter certificate password:

"C:\Program Files (x86)\Windows Kits\10\bin\x64\makecert.exe" /n "%publisher%" /r /h 0 /eku "1.3.6.1.5.5.7.3.3,1.3.6.1.4.1.311.10.3.13" /e "%expiry%" /sv %filename%.pvk %filename%.cer

"C:\Program Files (x86)\Windows Kits\10\bin\x64\pvk2pfx.exe" /pvk %filename%.pvk /pi %password% /spc %filename%.cer /pfx %filename%.pfx

