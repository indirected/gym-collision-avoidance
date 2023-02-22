#!/bin/bash
set -e

MAKE_VENV=${1:-true}
SOURCE_VENV=${2:-true}

# Directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if $MAKE_VENV; then
    # Virtualenv w/ python3
    export PYTHONPATH=/usr/bin/python3.7 # point to your python3
    python3.7 -m pip install virtualenv
    cd "$DIR"
    python3.7 -m virtualenv venv
fi

if $SOURCE_VENV; then
    cd "$DIR"
    source venv/bin/activate
    export PYTHONPATH="${DIR}/venv/bin/python/dist-packages"
fi

# Install this pkg and its requirements
python3.7 -m pip install -e "$DIR"

# Install RVO and its requirements
cd "$DIR/gym_collision_avoidance/envs/policies/Python-RVO2"
python3.7 -m pip install Cython
if [[ "$OSTYPE" == "darwin"* ]]; then
    export MACOSX_DEPLOYMENT_TARGET=10.15
    brew install cmake || true
fi
python3.7 setup.py build
python3.7 setup.py install

# Install DRL Long's requirements
# python -m pip install torch torchvision

echo "Finished installing gym_collision_avoidance!"
