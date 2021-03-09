#/!bin/bash

localdir=$(pwd)

cp -R ./src/images/* reveal.js/images

docker run -v $localdir:/documents/ \
  asciidoctor/docker-asciidoctor \
  asciidoctor-revealjs \
  -D reveal.js \
  -a slides \
  -o index.html \
  -a revealjsdir=. \
  -r asciidoctor-diagram \
  src/slide-deck.adoc
