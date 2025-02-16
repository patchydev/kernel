# kernel

To compile:
```bash
nasm -f bin boot.asm -o boot.bin
nasm -f bin stage2.asm -o stage2.bin
```

Create the image:
```bash
dd if=/dev/zero of=disk.img bs=512 count=2880                  
dd if=boot.bin of=disk.img bs=512 count=1 seek=0 conv=notrunc
dd if=stage2.bin of=disk.img bs=512 count=1 seek=1 conv=notrunc
```

To run:
```bash
qemu-system-x86_64 -drive format=raw,file=disk.img -display sdl
```