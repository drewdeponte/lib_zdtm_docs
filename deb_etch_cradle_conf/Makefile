DOC_NAME = deb_etch_cradle_conf
SRC = $(DOC_NAME).tex
OUTFILE = $(DOC_NAME).dvi
PS_FILE = $(DOC_NAME).ps
PDF_FILE = $(DOC_NAME).pdf

all :
	latex $(SRC)
	latex $(SRC)
	latex $(SRC)

report : $(OUTFILE)
	dvips -t letter -Z -q -o $(PS_FILE) $(OUTFILE)
	ps2pdf $(PS_FILE) $(PDF_FILE)

html:
	latex2html -iso_language EN -init $(DOC_NAME).init -split 2 $(SRC)

print : $(PS_FILE)
	lp $(PS_FILE)

clean :
	rm -f $(OUTFILE) $(PS_FILE) $(PDF_FILE) *.log *.aux *.toc *~

