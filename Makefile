# Default option creates the pdf and removes all texlive "junk".

.PHONY: clean purge default redo

default: tfg.pdf clean

redo: purge tfg.pdf clean

tfg.pdf: tfg.tex chapters/*.tex images/* include/* misc/*
	pdflatex tfg.tex
	biber tfg
	pdflatex tfg.tex

clean:
	rm -f tfg.aux tfg.bbl tfg.bcf tfg.blg tfg.log tfg.out tfg.run.xml tfg.toc
	rm -f chapters/*.aux

purge: clean
	rm tfg.pdf
