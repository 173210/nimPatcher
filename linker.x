OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)

ENTRY(_start)

SECTIONS
{
	. = 0x9D2000;
	.text : {
		*(.text.start)
		*(.text)
	}
	.rodata : {
		*(.rodata)
	}
	. = ALIGN(4);
}
