BINDIR=bin
PROBLEMS=1 2 3 4 5 6 18
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

$(BINDIR)/3: src/3.hs
	$(call NORMAL_HASKEL)

$(BINDIR)/4: src/4.hs
	$(call NORMAL_HASKEL)

$(BINDIR)/18: src/18.hs
	$(call NORMAL_HASKEL)

$(BINDIR)/5: src/5.hs
	$(call NORMAL_HASKEL)

$(BINDIR)/6: src/6.hs
	$(call NORMAL_HASKEL)

