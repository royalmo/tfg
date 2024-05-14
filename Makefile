# Default option creates the pdf and removes all texlive "junk".

.PHONY: clean purge default redo

default: tfg.pdf clean

redo: purge tfg.pdf clean

# Removed not useful output with https://tex.stackexchange.com/questions/371215
# In the first compile time we want to see everything in case errors occur.
tfg.pdf: tfg.tex chapters/*.tex images/* include/* misc/*
	pdflatex tfg.tex
	biber tfg
	pdflatex --interaction=nonstopmode tfg | awk 'BEGIN{IGNORECASE = 1}/warning|!/,/^$/;'

clean:
	rm -f tfg.aux tfg.bbl tfg.bcf tfg.blg tfg.log tfg.out tfg.run.xml tfg.toc
	rm -f chapters/*.aux

purge: clean
	rm tfg.pdf
