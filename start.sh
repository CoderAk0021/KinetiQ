#!/bin/bash
pip install --upgrade pip
pip install -r requirements.txt
gunicorn app:app --worker-class eventlet -w 1 --bind 0.0.0.0:$PORT
