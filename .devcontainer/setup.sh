#!/usr/bin/env bash
# Runs once when the Codespace is created.
# magick needs the ImageMagick C++ libraries; tidyverse is already in the image.
set -e
SUDO=""
if [ "$(id -u)" -ne 0 ]; then SUDO="sudo"; fi
$SUDO apt-get update
$SUDO apt-get install -y libmagick++-dev
Rscript -e 'install.packages(c("magick", "languageserver"), repos = "https://cloud.r-project.org")'
