all: Images/*.png Images/*.eps codes/* chapters/*.tex guide-book.tex
	# xelatex -shell-escape -8bit guide-book.tex -interaction=nonstopmode 
	# xelatex -shell-escape -8bit guide-book.tex -interaction=nonstopmode 
	xelatex -shell-escape -8bit -no-pdf guide-book.tex -interaction=nonstopmode 
	xelatex -shell-escape -8bit -no-pdf guide-book.tex -interaction=nonstopmode 
	xdvipdfmx -V5 guide-book


.PHONY:clean
clean:
	rm *.aux *.log *.out *.pdf *.toc *.xdv
	rm -r _minted-guide-book

