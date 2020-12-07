PROJECT = visual02

$(PROJECT).prg: $(PROJECT).asm bios.inc
	rcasm -l -v -x -d1802 $(PROJECT) 2>&1 | tee $(PROJECT).lst

elfos: $(PROJECT).asm bios.inc
	rcasm -l -v -x -d1802 -DELFOS $(PROJECT) 2>&1 | tee $(PROJECT).lst

picoelf: $(PROJECT).asm bios.inc
	rcasm -l -v -x -d1802 -DPICOROM $(PROJECT) 2>&1 | tee $(PROJECT).lst

stg: $(PROJECT).asm bios.inc
	rcasm -l -v -x -d1802 -DSTGROM $(PROJECT) 2>&1 | tee $(PROJECT).lst

clean:
	-rm $(PROJECT).prg


