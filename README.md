
# 自动安装Arch Linux脚本

## 最小化安装（efi启动）

完全依据ArchWiki，纯正无添加。

启动已安装的系统或liveCD，保证网络畅通  
挂载好安装系统根目录，默认为/mnt（可在env.bash中将ROOT_DIR修改为其他）  
挂载好EFI分区目录，默认为/boot（可在env.bash中将EFI_DIR修改为其他）  
root用户密码默认为123（可在env.bash中将PASSWORD修改为其他）  
在root权限下运行
```
bash arch.bash
```
即可最完成小化安装
