QMD := $(shell find . -name '*.qmd' -not -path '*/old/*' -not -path './.quarto/*')
HTML := $(QMD:.qmd=.html)

.PHONY: all clean

all: $(HTML)

%.html: %.qmd
	quarto render $<

clean:
	rm -f $(HTML)
