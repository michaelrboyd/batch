:: Name:     MyWiFiProfiles.bat
:: Purpose:  Backup the WiFi Passwords
:: Author:   Michael Boyd
:: Revision: 2016-April-04	Initial File
ECHO ON

:: Set the backup location
SET WiFiBackupDir=F:\backup\WiFi

:: Show the available profiles
:: netsh wlan show profiles > .\log\WiFiList.txt

netsh wlan export profile folder=%WiFiBackupDir% > .\log\WiFiBackup.txt

:: How to Restore
:: netsh wlan add profile filename=”c:\wifinetback\network-profile-name.xml” user=all

:: Pause
Echo OFF