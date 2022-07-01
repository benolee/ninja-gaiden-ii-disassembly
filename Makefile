.PHONY: clean

build: clean ninja-gaiden-ii.nes

%.o: %.asm
	ca65 --create-dep "$@.dep" --debug --verbose -g --debug-info $< -o $@

ninja-gaiden-ii.nes: mmc3.cfg entry.o
	ld65 --mapfile $@.map --dbgfile $@.dbg -C $^ -o $@

clean:
	rm -f ./ninja-gaiden-ii.nes ./*.nes.dbg ./*.o ./*.dep ./*.nes.map

include $(wildcard ./*.dep ./*/*.dep)
