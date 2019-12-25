# iocage-plugin-rslsync

## Post install steps
### Stop the services
```
iocage exec jail_name "service rslsync stop"
```
### Add mount points
```
mkdir /mnt/pool-1/iocage/jails/jail_name/root/folder
iocage fstab -a jail_name /mnt/pool-1/folder /folder nullfs rw 0 0
```
### Start the services
```
iocage exec jail_name "service rslsync start"
```
