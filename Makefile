csama2019:
	make csama2019-lab.html


csama2019-lab.html: csama2019-lab.Rmd
	Rscript -e 'rmarkdown::render("csama2019-lab.Rmd")'

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
	Rscript -e 'rmarkdown::render("README.md", output_file = "./index.html")'
