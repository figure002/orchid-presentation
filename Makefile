OUTDIR=build
TEX2PDF=pdflatex
TEX2PDF_OPTS=-file-line-error -output-directory $(OUTDIR)

%.pdf: %.tex
	$(TEX2PDF) $(TEX2PDF_OPTS) $<
	$(TEX2PDF) $(TEX2PDF_OPTS) $<

plots: make-plots.r
	Rscript make-plots.r
.PHONY: plots

meta-db-diagram.pdf: data/meta.sqlite
	java -classpath schemacrawler/lib/*:. schemacrawler.tools.sqlite.Main \
	-database=$< -password= -infolevel=standard -command=graph \
	-noinfo=true -portablenames=true -outputformat=pdf -outputfile=$@
	echo Database diagram is in $@

clean:
	@rm -f $(OUTDIR)/*.aux  $(OUTDIR)/*.log $(OUTDIR)/*.out
.PHONY: clean
