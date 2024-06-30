#!/bin/sh
cd "$(git rev-parse --show-toplevel)" && git add . && git commit -m "$1" && git push origin main
