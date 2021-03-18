:: Name:     MyTasks.bat
:: Purpose:  Run once to schedule these tasks
:: Author:   Michael Boyd
:: Revision: 2016-April-04	Run Back tasks
ECHO ON

:: RUN THE TASK ONCE PER DAY @ Noon
schtasks /create /tn "MyBackupTasks" /tr .\mybackup.bat /sc daily /st 12:00 
:: / create is new task
:: /tn "MyBackupTasks" is the task name
:: /tr .\mybackup.bat is the task to run
:: /sc daily  run everyday
:: /st 12:00 start time is 12:00 (noon)
:: /ed 31/12/2002


:: RUN THE BACKGROUND TASK
:: schtasks /create /tn "MyBackupTasks" /tr .\mybackup.bat /sc onidle /i 5
:: /sc onidle will run only when PC is idle 
:: /i 5 parameter to specify that the computer must remain idle for ten minutes before the task starts
PAUSE

ECHO OFF