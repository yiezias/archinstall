
rm ~/.bashrc

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "zh_CN.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=zh_CN.UTF-8" >> /etc/locale.conf

echo "root:$PASSWORD" | chpasswd

grub-install --target=x86_64-efi --efi-directory=$EFI_DIR --removable
grub-mkconfig -o /boot/grub/grub.cfg

exit
