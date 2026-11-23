#!/bin/sh
IMAGE=pandoc/extra

OUTPUT_FILE_NAME=igor_zarvanskyi_cv.pdf

docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" resume.md --pdf-engine=pdflatex -s --template resume-style.tex -o $OUTPUT_FILE_NAME
echo "Conversion to pdf finished"
