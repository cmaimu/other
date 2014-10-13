#!/bin/bash

echo -n "Mau tambah user? "
read tambah

while [ $tambah != "t" ]
do
echo -n "Nama User           :"
read namauser
echo -n "Expired (yyyy-mm-dd):"
read expired

useradd -e $expired -d /home/$namauser -M -g users -s /bin/false $namauser
passwd $namauser

echo -n "Mau tambah user lagi?"
read tambah
done
