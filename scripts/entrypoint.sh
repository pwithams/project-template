#!/bin/bash

notebook_name=$1

if [[ "$notebook_name" == "" ]]; then
    echo "Notebook name must be provided."
    exit 1
fi

echo "Running ${notebook_name}..."
python3 ${notebook_name}.py
