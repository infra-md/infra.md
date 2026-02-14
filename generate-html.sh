#!/usr/bin/env bash
set -euo pipefail

pandoc -s README.md -o index.html
pandoc -s VISION.md -o vision.html
