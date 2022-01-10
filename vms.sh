#Check Virtualization Extension 
egrep -c '(vmx|svm)' /proc/cpuinfo

#Install QEMU and Virtual Machine Manager
sudo apt install qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils virtinst libvirt-daemon virt-manager -y

#Verify that Libvirtd service is started
sudo systemctl status libvirtd.service

#Start Default Network for Networking
sudo virsh net-start default
sudo virsh net-autostart default

#Check status with:
sudo virsh net-list --all

#Add User to libvirt to Allow Access to VMs
sudo adduser $user libvirt
sudo adduser $user libvirt-qemu


#source: https://www.christitus.com/vm-setup-in-linux
