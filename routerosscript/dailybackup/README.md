# dailybackup
Backup file (.rsc) & (.backup) harian ke Synology Server.


## Fitur: 
-mikrotik `log` 
-notif telegram

## Goal

-Jika berhasil upload file backup, ditandai pesan mikrotik log *`Done!!!`*
-Jika gagal, akan mengirim notif ke grup telegram *`backupfile backup to FTP failed`*


mikrotik `log`:

```
/log  print where message  ~"Dist-VMware-New-2023-02-24"
23:50:50 info fetch: file "disk/Dist-VMware-New-2023-02-24..rsc" uploaded 
23:50:50 script,info Dist-VMware-New-2023-02-24..rsc has been successfully uploaded to FTP! 
23:50:50 info fetch: file "disk/Dist-VMware-New-2023-02-24..backup" uploaded 
23:50:50 script,info Dist-VMware-New-2023-02-24..backup has been successfully uploaded to FTP! 
23:50:50 script,info All Dist-VMware-New-2023-02-24. has been removed from flash! 

```
```
/log  print where message  ~"Done!!!"

...
feb/24 23:51:34 script,info Done!!! 

```

synology `explorer`:

```

<img src="https://github.com/afrahman23/myproject/routerosscript/blob/main/nas-backup.PNG" alt="nas backup" width="100%">

```

