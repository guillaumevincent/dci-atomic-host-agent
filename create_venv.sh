#!/usr/bin/env bash
rm -rf venv
python3 -m venv venv
source venv/bin/activate
python -m pip install -U pip
python -m pip install -Ur requirements.txt
