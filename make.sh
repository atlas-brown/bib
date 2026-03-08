#!/bin/bash

cat <<-EOM > draft.tex
	\documentclass{article}
	\usepackage{url}
	\begin{document}
	Some citations
EOM

bibtex-tidy ./*.bib \
						--no-escape         \
						--no-strip-comments \
						--months            \
						--curly             \
						--sort-fields       \
						--duplicates        \
						--blank-lines       \
						--modify

cat ./*.bib | grep '@.*{.*,' | sed 's/@article{//' | sed 's/@inproceedings{//' | sed 's/@book{//' | sed 's/@inbook{//' | sed 's/@phdthesis{//' | sed 's/@misc{//' | sed 's/@mastersthesis{//' | sed 's/@techreport{//' | sed 's/@preprint{//' | tr '\n' ' ' | sed 's/,[[:space:]]*$/}/' | sed 's/^/\\cite{/' >> draft.tex

cat <<-EOM >> draft.tex
	 
	 { \footnotesize
	   \bibliographystyle{plain}
	   \bibliography{atlas,other,theses}
	 }
	\end{document}
EOM

cat draft.tex

xelatex draft.tex
bibtex draft
xelatex draft.tex
xelatex draft.tex
