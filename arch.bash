
set -e

source ./env.bash

echo "ROOT_DIR: $ROOT_DIR"
echo "EFI_DIR: $EFI_DIR"

if command -v genfstab > /dev/null 2>&1;then
	:
else
	echo "no genfstab find"
	echo "install arch-install-script"
	exit 1
fi

pacstrap $ROOT_DIR linux linux-firmware base \
	grub efibootmgr \
	gvim networkmanager

genfstab -U $ROOT_DIR > $ROOT_DIR/etc/fstab

cat ./env.bash ./bashrc > /mnt/root/.bashrc

arch-chroot /mnt
