QMD := $(shell find . -name '*.qmd' -not -path '*/old/*' -not -path './.quarto/*')
HTML := $(QMD:.qmd=.html)

.PHONY: all site preview add clean

all: $(HTML)

site:
	quarto render

preview:
	quarto preview

# Stage everything needed for a deploy commit.
# Avoids `git add .` so big/unwanted files at the repo root (e.g. the .deb
# installer) don't slip in.
add:
	-git rm -f --ignore-unmatch index.md
	git add Makefile _quarto.yml .nojekyll .gitignore
	git add index.qmd index.html
	git add -A module1 module2 module3 module4

%.html: %.qmd _quarto.yml
	quarto render $<

clean:
	rm -rf .quarto _site
	rm -f $(HTML)
