files:=model145.qmd

all: $(files:.qmd=.md)

%.md: %.qmd
	quarto render $< -o $@ -t gfm

.PHONY: all

