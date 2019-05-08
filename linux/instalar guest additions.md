Instalar guest additions

Ir al menu Dispositivos/insertar imagen de CDROM de Guest aditions
sudo mkdir /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom
cd /mnt/cdrom
ls -lisa
sudo ./VBoxLinuxAdditions.run
sudo reboot now
