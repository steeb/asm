AS = as
LD = ld

EXE = hello

all: $(EXE)

%: %.o
	$(LD) -o $@ $<

%.o: %.asm
	$(AS) -o $@ $<

clean:
	rm $(EXE) $(EXE).o
