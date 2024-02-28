#!/bin/sh
IMAGE=blang/latex:ubuntu
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" latexmk -cd -f -interaction=batchmode -pdf cv_java_zarvanskyi.tex
