# GhostBirdOS Nano
# Made by Hu Wenjie<1@hwj.me>

.PHONY: nano
nano:
	dd if=/dev/zero of=gbn.img count=1024 bs=512
	nasm boot.asm -o boot.bin
	

.PHONY: run
run:
	qemu-system-i386 gbn.img
	
.PHONY: clean
clean:
	rm *.bin
