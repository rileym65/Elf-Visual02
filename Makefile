PROJECT = visual02

$(PROJECT).prg: $(PROJECT).asm bios.inc
	asm02 $(PROJECT).asm 2>&1 | tee $(PROJECT).lst

elfos: $(PROJECT).asm bios.inc
	asm02 -DELFOS $(PROJECT).asm 2>&1 | tee $(PROJECT).lst

picoelf: $(PROJECT).asm bios.inc
	asm02 -DPICOROM $(PROJECT).asm 2>&1 | tee $(PROJECT).lst

stg: $(PROJECT).asm bios.inc
	asm02 -DSTGROM $(PROJECT).asm 2>&1 | tee $(PROJECT).lst

mchip: $(PROJECT).asm bios.inc
	asm02 -DMCHIP $(PROJECT).asm 2>&1 | tee $(PROJECT).lst

clean:
	-rm $(PROJECT).prg


