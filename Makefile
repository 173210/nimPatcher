TARGET = patchnim

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
OC = arm-none-eabi-objcopy

CFLAGS = -g -mcpu=mpcore -march=armv6k -mlittle-endian -O2
LDFLAGS = -nostdlib -Tlinker.x

all: $(TARGET).bin

%.bin: %.elf
	$(OC) -S -O binary $< $@

$(TARGET).elf: main.o
	$(LD) $(LDFLAGS) $^ -o $@

clean:
	rm -f main.o $(TARGET).elf $(TARGET).bin
