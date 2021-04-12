#!/usr/bin/env bash

if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.82.0-alpine 'hugo --minify -v --buildDrafts --destination public'
fi
