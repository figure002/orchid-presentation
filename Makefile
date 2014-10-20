OUTDIR=build
TEX2PDF=pdflatex
TEX2PDF_OPTS=-file-line-error -output-directory $(OUTDIR)

%.pdf: %.tex
	$(TEX2PDF) $(TEX2PDF_OPTS) $<
	$(TEX2PDF) $(TEX2PDF_OPTS) $<

clean:
	@rm -f $(OUTDIR)/*.aux  $(OUTDIR)/*.log $(OUTDIR)/*.out
.PHONY: clean
