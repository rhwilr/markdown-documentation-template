# Generate a single PDF, ePub or HTML from the Markdown source files
#
# In order to use this makefile, you need some tools:
# - GNU make
# - Pandoc
# - LaTeX (texlive-core, texlive-fontsextra)

# Output directory and filename
BUILD = build
OUTPUT_FILENAME = Documentation

# Additional Metadata
METADATA = metadata.yml

# Source for the document
SOURCE = $(shell ls src/*.md)

# Combine all the arguments 
ARGS = --from markdown \
		--toc \
		--toc-depth=2 \
		--template="./templates/eisvogel.tex" \
		--variable subparagraph \
		-f markdown-implicit_figures \
		-V papersize:a4 \
		-V book \
		-V classoption=oneside \
		--top-level-division=chapter \
		--pdf-engine=xelatex \
		--highlight-style breezedark \
		--citeproc \
		--csl=bibliography.csl \
		--listings 

# Default task
all: clean pdf

# Build tasks for individual formats
pdf: $(BUILD)/$(OUTPUT_FILENAME).pdf

# Clean the build directory
.PHONY : clean
clean:
	rm -r $(BUILD)

# Build a pdf
$(BUILD)/$(OUTPUT_FILENAME).pdf: $(METADATA) $(SOURCE)
	mkdir -p $(BUILD)
	pandoc $(ARGS) -o $@ $^
