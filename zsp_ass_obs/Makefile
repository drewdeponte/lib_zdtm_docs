DOC_NAME = zsp_ass_obs
SRC = $(DOC_NAME).tex
OUTFILE = $(DOC_NAME).dvi
PS_FILE = $(DOC_NAME).ps
PDF_FILE = $(DOC_NAME).pdf

all :
	latex $(SRC)
	latex $(SRC)
	latex $(SRC)

html:
	latex2html -iso_language EN -init $(DOC_NAME).init -split 2 $(SRC)

report : $(OUTFILE)
	dvips -t letter -Z -q -o $(PS_FILE) $(OUTFILE)
	ps2pdf $(PS_FILE) $(PDF_FILE)

print : $(PS_FILE)
	lp $(PS_FILE)

clean :
	rm -f $(OUTFILE) $(PS_FILE) $(PDF_FILE) *.log *.aux *.toc *~

