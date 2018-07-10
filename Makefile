all:
	make lab.html
	make material.html

%.md: %.Rmd
	/opt/Rpatched/lib64/R/bin/Rscript -e "knitr::knit('$^')"

%.html: %.md
	/opt/Rpatched/lib64/R/bin/Rscript -e "rmarkdown::render('$^')"

.PHONY: all
