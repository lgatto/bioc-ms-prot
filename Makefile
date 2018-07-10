all:
	make lab.html
	make material.html

%.md: %.Rmd
	Rscript -e "knitr::knit('$^')"

%.html: %.md
	Rscript -e "rmarkdown::render('$^')"

.PHONY: all
