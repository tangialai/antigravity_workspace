#!/bin/bash
# Usage: source ODOO/SCRIPTS/env_selector.sh <python_version>
# Example: source ODOO/SCRIPTS/env_selector.sh 3.12

VERSION=$1

if [ -z "$VERSION" ]; then
    echo "Usage: source ODOO/SCRIPTS/env_selector.sh <python_version>"
    echo "Available versions: 3.10, 3.11, 3.12, 3.13"
    return 1
fi

# Normalize version string (e.g., 3.12 -> 3_12)
VENV_SUFFIX="${VERSION//./_}"
VENV_PATH="$HOME/WORKSPACE/ODOO/ENV_CONFIG/python_venv_${VENV_SUFFIX}"

if [ -d "$VENV_PATH" ]; then
    source "$VENV_PATH/bin/activate"
    echo "✅ Activated Python $VERSION environment: $VENV_PATH"
else
    echo "❌ Error: Virtual environment for Python $VERSION not found at $VENV_PATH"
    echo "Please check available environments in ENV_CONFIG."
fi
