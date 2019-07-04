bss:
	make bss-slides.html
	make bss-lab.html

bss-slides.html: bss-slides.Rmd
	Rscript -e 'rmarkdown::render("bss-slides.Rmd")'

bss-lab.html: bss-lab.Rmd
	Rscript -e 'rmarkdown::render("bss-lab.Rmd")'

lab.html: lab.Rmd
	Rscript -e 'rmarkdown::render("lab.Rmd")'


www:
	cp bss-slides.html docs/.
	cp bss-lab.html docs/.
	cp lab.html docs/.
	Rscript -e 'rmarkdown::render("README.md", output_file = "./docs/index.html")'
