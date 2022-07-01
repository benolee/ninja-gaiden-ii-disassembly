.PHONY: clean

build: ninja-gaiden-ii.nes

%.o: %.asm
	ca65 --create-dep "$@.dep" -g --debug-info $< -o $@

ninja-gaiden-ii.nes: mmc3.cfg entry.o
	ld65  --dbgfile $@.dbg -C $^ -o $@

clean:
	rm -f ./ninja-gaiden-ii.nes ./*.nes.dbg ./*.o ./*.dep

include $(wildcard ./*.dep ./*/*.dep)
