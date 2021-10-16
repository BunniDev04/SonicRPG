@echo off
"AMPS\Includer.exe" ASM68K AMPS AMPS\.Data
asm68k /m /p /o ae- sonic1.asm, SonicRPG.bin, , error\output.lst>error\output.log
type error\output.log
if not exist SonicRPG.bin pause & exit
"AMPS\Dual PCM Compress.exe" AMPS\.z80 AMPS\.z80.dat SonicRPG.bin _dlls\koscmp.exe
error\convsym error\output.lst SonicRPG.bin -input asm68k_lst -inopt "/localSign=. /localJoin=. /ignoreMacroDefs+ /ignoreMacroExp- /addMacrosAsOpcodes+" -a
fixheadr.exe SonicRPG.bin
del AMPS\.Data
