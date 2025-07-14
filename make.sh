#!/bin/bash

cat <<-EOM > draft.tex
	\documentclass{article}
	\begin{document}
	Some citations
EOM

cat atlas.bib | grep '@.*{.*,'  | sed 's/@inproceedings{//' | sed 's/@inbook{//' | sed 's/@phdthesis{//' | sed 's/@misc{//' | sed 's/@mastersthesis{//' | tr '\n' ' ' | sed 's/,[[:space:]]*$/}/' | sed 's/^/\\cite{/' >> draft.tex

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

