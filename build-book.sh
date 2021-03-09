#!/bin/sh

BUILD_DATE=`date "+%m/%d/%Y %H:%M"`

docker run -it -v \
  $PWD:/documents/ \
  asciidoctor/docker-asciidoctor \
  asciidoctor-pdf \
    -r asciidoctor-diagram \
    -a build-date="${BUILD_DATE}" \
    -a toc \
    -D pdf \
    -d book \
    src/book.adoc
