#!/usr/bin/env bash

if [ ! -r ./node_modules ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.76.5-alpine 'npm ci'
fi
if [ ! -r ./public ]; then
    docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/hugo-asciidoctor-plantuml:0.76.5-alpine 'hugo --minify -v --destination public'
fi
