#!/usr/bin/env bash

## starts up the langgraph agent
python3.11 -m venv env
source env/bin/activate
pip install -r requirements.txt
export COHERE_API_KEY=$(cat ./.secrets/cohere_key.txt)

# python main.py resume.tex jd.txt

sudo apt update
sudo apt install -y texlive-base

streamlit run streamlit.py --server.port=8501 --server.address=0.0.0.0