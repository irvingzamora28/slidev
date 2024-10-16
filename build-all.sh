#!/bin/bash
mkdir -p dist
for episode in season1/*; do
  episode_name=$(basename "$episode")
  slidev build "$episode/slides.md" --out "$(pwd)/dist/season1/$episode_name" --base "/season1/$episode_name/"
done
