# mikrotikscript
Kode skrip mikrotik untuk dinikmati.

## Try it

Just `download` and `import .rsc file` to your terminal router.

* **Example**
```
/tool fetch mode=http url="https://raw.githubusercontent.com/afrahman23/harmoni/main/routerosscript/dailybackup/daily_ftpbackup.rsc"
```

```
/import daily_ftpbackup.rsc
```

Edit the variable that you needed, as follows;
`ftpip` `ftpuser` `ftppass` `ftppath` `bot` `chat`

```
    \n:local ftpip \"192.168.xx.xx\";\r\
    \n:local ftpuser \"ftpusername\";\r\
    \n:local ftppass \"ftppassword\";\r\
    \n:local fport \"yourftpport\";\r\
    \n:local ftppath \"/NetBackup/mikrotikcore/\";\r\
    \n:local bot \"yourtokenbot\";\r\
    \n:local chat \"yourchatid\";\r\
```


## List of dot .rsc


* **`daily_ftpbackup.rsc`** – Backup file (.rsc) & (.backup) harian ke FTP Server.
* **`daily_backupsample.rsc`** – Backup file (.rsc) & (.backup) harian ke NAS Server, +fitur: mikrotik log dan telegram
* **`daily_dynip.rsc`** – Untuk mengambil ip dinamis terbaru yang diberikan pihak provider, dan otomatis akan terkirim harian lewat telegram.
* **`get_natip`** – Terkadang perlu tahu private ip di nat kemana.
* **`srcping.rsc`** – Troubleshoot ping pake source address.
* **`srctrace.rsc`** – Troubleshoot trace pake source address.