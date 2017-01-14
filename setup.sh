if ! mount | grep binfmt_misc;
then
	sudo mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc
fi

sudo apt-get update
sudo apt-get install -y qemu-user-static debootstrap
