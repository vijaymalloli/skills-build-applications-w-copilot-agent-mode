# OctoFit Tracker App (scaffold)

This branch adds a minimal scaffold for the OctoFit Tracker App and a script to create a Python virtual environment and install requirements.

Quick setup (Unix/macOS):

1. Fetch and check out the branch:
   git fetch origin build-octofit-app
   git checkout -b build-octofit-app origin/build-octofit-app

2. Create a virtual environment and install requirements (one-line):
   bash scripts/setup_venv.sh

3. Or run manually:
   python -m venv .venv
   source .venv/bin/activate
   python -m pip install --upgrade pip
   pip install -r requirements.txt

4. Run the FastAPI app (after activating venv):
   uvicorn octofit.main:app --reload

Windows PowerShell (manual):
   python -m venv .venv
   .\.venv\Scripts\Activate.ps1
   python -m pip install --upgrade pip
   pip install -r requirements.txt

Files added:
- requirements.txt
- scripts/setup_venv.sh (creates venv and installs requirements)
- octofit/main.py (minimal FastAPI app)
