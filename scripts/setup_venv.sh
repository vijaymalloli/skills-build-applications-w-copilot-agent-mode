#!/usr/bin/env bash
set -euo pipefail

VENV_DIR=".venv"
PYTHON_CMD=
${PYTHON_CMD:-python}

echo "Creating virtual environment in $VENV_DIR using $PYTHON_CMD..."
$PYTHON_CMD -m venv "$VENV_DIR"

# Activate the venv in this script (for pip install)
# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"

echo "Upgrading pip and installing requirements..."
python -m pip install --upgrade pip
pip install -r requirements.txt

echo "Done. To activate the venv run: source $VENV_DIR/bin/activate"
