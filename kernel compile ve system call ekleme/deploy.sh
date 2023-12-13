#!/usr/bin/bash
# UBUNTU-DEBIAN deploy

# This causes the script to exit if an error occurs
set -eE -o functrace

# Compile the kernel
make -j4

# Compile and install modules 
# eger modullerden cok fazlasini aktif ettiyseniz, 
# olusacak kernel size vboxta tanimli makine icin cok buyuk olabilir
# make menuconfig ile yuklenecek modulleri belirleyebilirsiniz
make -j4 modules_install

# kernelin /boot ve grub menuye yuklenmesi
make install

# gerekli olabilir
#update-initramfs -c -k version
#update-grub
