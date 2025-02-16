# kernel

To compile:
```bash
nasm -f bin boot.asm -o boot.bin
```

To run:
```bash
qemu-system-x86_64 -drive format=raw,file=boot.bin -display sdl
```