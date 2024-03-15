#!/bin/sh
IMAGE=pandoc/extra

docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" resume.md --pdf-engine=lualatex -s --template resume-style.tex -o igor_zarvanskyi_sap_commerce.pdf
echo "Conversion to pdf finished"
