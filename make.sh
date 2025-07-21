#!/bin/bash

cat <<-EOM > draft.tex
	\documentclass{article}
	\begin{document}
	Some citations
EOM

cat ./*.bib | grep '@.*{.*,' | sed 's/@article{//' | sed 's/@inproceedings{//' | sed 's/@book{//' | sed 's/@inbook{//' | sed 's/@phdthesis{//' | sed 's/@misc{//' | sed 's/@mastersthesis{//' | sed 's/@techreport{//' | tr '\n' ' ' | sed 's/,[[:space:]]*$/}/' | sed 's/^/\\cite{/' >> draft.tex

cat <<-EOM >> draft.tex
	 
	 { \footnotesize
	   \bibliographystyle{plain}
	   \bibliography{atlas}
	 }
	\end{document}
EOM

cat draft.tex

pdflatex draft.tex
bibtex draft
