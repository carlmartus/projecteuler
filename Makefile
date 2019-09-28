BINDIR=bin
PROBLEMS=1 2
BINARIES=$(PROBLEMS:%=${BINDIR}/%)

NORMAL_HASKEL=ghc -o $@ $< -odir $(BINDIR) -hidir $(BINDIR) && rm $(BINDIR)/Main.*

.PHONY: all clean

all: ${BINDIR}/.d ${BINARIES}

clean:
	$(RM) -r $(BINDIR)

$(BINDIR)/.d:
	mkdir $(BINDIR)
	touch $@

# Problem 1
$(BINDIR)/1: src/1.hs
	$(call NORMAL_HASKEL)

$(BINDIR)/2: src/2.hs
	$(call NORMAL_HASKEL)
