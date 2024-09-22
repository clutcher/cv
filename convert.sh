#!/bin/sh
IMAGE=pandoc/extra

OUTPUT_FILE_NAME=igor_zarvanskyi_sap_commerce.pdf

docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" resume.md --pdf-engine=lualatex -s --template resume-style.tex -o $OUTPUT_FILE_NAME
echo "Conversion to pdf finished"
