#!/bin/bash
gunicorn -w 4 -k uvicorn.workers.UvicornWorker BACKABLE_NEW_INFRASTRUCTURE_THE_GROWTH_ENGINE:app --bind 0.0.0.0:8000 --timeout 3600 --access-logfile '-' --error-logfile '-' --log-level info
