# $Id: Makefile,v 1.7 2009/06/20 01:18:01 ale Exp $

LATEX=latex 

BIBTEX=bibtex
BIBFILE=video.bib
PAPER=video

TEXFILES = \
	video.tex \
	introduction.tex \
	background.tex \
	data.tex \
	spatial.tex \
	temporal.tex 

EPSFIGS = \

EPSGRAPHS = $(wildcard plots/*.eps)

%all:  subdirs $(PAPER).pdf
all: $(PAPER).pdf

subdirs:
	$(MAKE) -C plots

bib:
	$(BIBTEX) pln

%.eps: %.fig
	fig2dev -L eps $< $@
$(PAPER).ps: $(PAPER).dvi
	#dvips -Ppdf -Pcmz -Pamz -t letter -D 600 -G0 -f $(PAPER).dvi > $(PAPER).ps
	dvips -P pdf -t letter -f $(PAPER).dvi -o $(PAPER).ps

#$(PAPER).pdf: $(PAPER).dvi
#	dvipdf $(PAPER).dvi


$(PAPER).pdf: $(PAPER).ps 
	ps2pdf14 $(PAPER).ps

$(PAPER).dvi: $(EPSFIGS) $(TEXFILES) $(BIBFILE) 
	$(LATEX)  $(PAPER)
	$(BIBTEX) $(PAPER)
	$(LATEX)  $(PAPER)
	$(LATEX)  $(PAPER)

$(PAPER).blg: $(BIBFILE)
	$(LATEX)  $(PAPER)
	$(BIBTEX) $(PAPER)
	$(LATEX)  $(PAPER)

clean:
	rm -f *.dvi *.aux *.ps *~ *.log *.lot *.lof *.toc *.blg *.bbl *.pdf
