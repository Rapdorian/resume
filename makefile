resume.pdf: resume.md
	pandoc --template=resume.latex resume.md -o resume.pdf

README.md: resume.md
	./make_readme.sh
