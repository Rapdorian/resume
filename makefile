default: resume.pdf

build/%.pdf: %.latex
	mkdir -p build/
	pdflatex --output-directory build/ $<

%.pdf: build/%.pdf
	mv $< $@

clean:
	rm build/ -rf
	rm *.pdf
