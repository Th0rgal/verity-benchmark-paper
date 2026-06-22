LATEXMK ?= latexmk
PYTHON ?= python3
BENCHMARK_DIR ?= ../verity-benchmark

.PHONY: all tables anonymous author clean check

all: anonymous author

tables:
	mkdir -p generated
	$(PYTHON) scripts/render_tables.py --benchmark-dir $(BENCHMARK_DIR) --out-dir generated

anonymous: tables
	mkdir -p build
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -jobname=build/paper-anonymous -pdflatex='pdflatex %O "\def\anonymousbuild{1}\input{paper.tex}"' paper.tex

author: tables
	mkdir -p build
	$(LATEXMK) -pdf -interaction=nonstopmode -halt-on-error -jobname=build/paper-author -pdflatex='pdflatex %O "\def\anonymousbuild{0}\input{paper.tex}"' paper.tex

check: all

clean:
	$(LATEXMK) -C -jobname=build/paper-anonymous paper.tex
	$(LATEXMK) -C -jobname=build/paper-author paper.tex
	rm -f generated/*.tex generated/*.json
