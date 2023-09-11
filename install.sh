#!/bin/sh

command -v equivs-build
[ $? -eq 1 ] && sudo apt install equivs

echo "Building fake packages..."
for f in *.equivs; do equivs-build $f; done
echo "Installing fake packages..."
for f in *.deb; do sudo apt install ./$f; done

echo "Installing ROCm with the known working options..."
sudo apt update
wget https://repo.radeon.com/amdgpu-install/5.4.1/ubuntu/jammy/amdgpu-install_5.4.50401-1_all.deb
sudo apt install ./amdgpu-install_5.4.50401-1_all.deb
sudo amdgpu-install --usecase=rocm,hip,mllib --no-dkms

echo Done!
exit
