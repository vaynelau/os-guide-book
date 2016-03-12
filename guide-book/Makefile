all: Images/*.png Images/*.eps codes/* chapters/*.tex guide-book.tex
	xelatex -shell-escape -8bit guide-book.tex -interaction=nonstopmode 
	xelatex -shell-escape -8bit guide-book.tex -interaction=nonstopmode

.PHONY:clean
clean:
	rm *.aux *.log *.out *.pdf *.toc 
	rm -r _minted-guide-book

