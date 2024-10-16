#!/bin/bash
for episode in season1/*; do
  episode_name=$(basename "$episode")
  slidev build "$episode/slides.md" --out "dist/$episode_name" --base "/season1/$episode_name/"
done
