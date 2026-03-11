.PHONY: all clean pdf

SRC = resume.tex
FILENAME ?= resume
FINAL_NAME ?= $(FILENAME)
OUTPUT_DIR = output
OUTPUT_PDF = $(OUTPUT_DIR)/$(FINAL_NAME).pdf

all: $(OUTPUT_PDF)

$(OUTPUT_PDF): $(SRC)
	@mkdir -p $(OUTPUT_DIR)
	pdflatex -jobname=$(FILENAME) -output-directory=$(OUTPUT_DIR) $(SRC)
	pdflatex -jobname=$(FILENAME) -output-directory=$(OUTPUT_DIR) $(SRC)

pdf: all

clean:
	rm -rf $(OUTPUT_DIR)/*.aux $(OUTPUT_DIR)/*.log $(OUTPUT_DIR)/*.out
