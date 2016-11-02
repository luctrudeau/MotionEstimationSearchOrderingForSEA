# latexmk must *always* run, because make does not have all the info.
.PHONY: MotionEstimationSearchOrderingForSEA.pdf all clean

all: MotionEstimationSearchOrderingForSEA.pdf

MotionEstimationSearchOrderingForSEA.pdf: MotionEstimationSearchOrderingForSEA.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make MotionEstimationSearchOrderingForSEA.tex

clean:
	latexmk -CA
