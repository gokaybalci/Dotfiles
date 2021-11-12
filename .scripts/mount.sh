#!/usr/bin/zsh

function timetohdd() {
sudo umount /dev/sdb1
sudo mount /dev/sdb1 /media/hdd
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "Timeshift yedeğinden HDD'ye geçirilecek. Emin misin? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		timetohdd;
	fi;
fi;
unset doIt;
