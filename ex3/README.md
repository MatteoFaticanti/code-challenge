# Exercise 3

The cronjob command is the following `0 23 * * 0 backup.sh`  
The commands inside the backup.sh file will be launched at the 23.00 of each sunday.  
Backup .sh is composed by two commands, the first to zip the content of the /home/user folder and the second one to send using scp the archive to the remote server.
```
tar -zcvf directory-backup.tar.gz /home/user
scp directory-backup.tar.gz user@192.168.1.100:home/user/directory-backup.tar.gz
```

## Cronjob syntax

```
 +---------------- minute (0 - 59)
 |  +------------- hour (0 - 23)
 |  |  +---------- day of month (1 - 31)
 |  |  |  +------- month (1 - 12)
 |  |  |  |  +---- day of week (0 - 6) (Sunday=0 or 7)
 |  |  |  |  |
 *  *  *  *  *  command to be executed
```
