qemu-img convert -f qcow2 -O qcow2 -o preallocation=off vol.qcow2 newdisk.qcow2

qemu-img create -f qcow2 -o preallocation=off <disk-name> <disk-size>

