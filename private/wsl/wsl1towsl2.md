关闭 Hyper-V:

```sh
bcdedit /set hypervisorlaunchtype off
```

开启hyper-v:

```sh
bcdedit /set hypervisorlaunchtype auto
```

etc:
```sh
wsl -l -v
wsl --set-default-version 2
wsl --set-version Ubuntu-20.04 2

wslconfig /l

LxRunOffline l
LxRunOffline move -n Ubuntu-20.04 -d D:\UbuntuWSL
LxRunOffline get-dir -n Ubuntu-20.04
```