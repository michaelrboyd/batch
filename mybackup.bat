:: Name:     mybackup.bat
:: Purpose:  backup the key files on my laptop
:: Author:   Michael Boyd
:: Revision: 2016-April-04	E Favorites
::							Filezilla 
::            				Outlook Signatures
::							Google Chrome  ????
ECHO ON

SET MyHomeDir=%USERPROFILE%
SET MyBackupDir=f:\backup

:: The following are relative to "MyHomeDir"
SET MyFavoritesDir=Favorites
SET MySignatureDir=AppData\Roaming\Microsoft\Signatures
SET MyChromeDir=AppData\Local\Google\Chrome\User Data\Default
SET MyFileZillaDir=AppData\Roaming\FileZilla

:: I added the "" below due to spaces in the paths below 
:: Backup Microsoft IE Favorites 
robocopy "%MyHomeDir%\%MyFavoritesDir%" "%MyBackupDir%\%MyFavoritesDir%" /MIR /FFT /R:3 /W:10 /Z /XA:SH /LOG:.\log\favorites.log /TEE
:: Backup Microsoft Outlook Signatures
robocopy "%MyHomeDir%\%MySignatureDir%" "%MyBackupDir%\%MySignatureDir%" /MIR /FFT /R:3 /W:10 /Z /XA:SH /LOG:.\log\signature.log /TEE

:: Backup Chrome
robocopy "%MyHomeDir%\%MyFileZillaDir%" "%MyBackupDir%\%MyFileZillaDir%" /MIR /FFT /R:3 /W:10 /Z /XA:SH /LOG:.\log\filezilla.log /TEE


:: Backup Chrome
::robocopy "%MyHomeDir%\%MyChromeDir%" "%MyBackupDir%\%MyChromeDir%" /MIR /FFT /R:3 /W:10 /Z /XA:SH /LOG:.\log\chrome.log /TEE

schtasks /query /V /FO LIST /TN MyBackupTasks > MyTasksLog.txt

PAUSE
@ECHO OFF
