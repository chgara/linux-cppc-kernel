#!/bin/bash

source PKGBUILD;

for patch in *.patch; do
    if [[ ! " ${source[*]} " =~ " ${patch} " ]]; then
        echo "Path ${patch} not found in PKGBUILD"
        rm "${patch}"
    else
        echo "Path ${patch} found in PKGBUILD"
    fi
done