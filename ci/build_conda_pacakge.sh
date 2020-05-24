#!/bin/bash

set -x #echo o

conda build conda.recipe --quiet --no-test --no-anaconda-upload --no-verify
pushd $HOME
tar cvzf conda-bld-noarch.tgz "conda-bld/noarch" -C "/usr/share/miniconda3/envs/bk-test"
mv $HOME/conda-bld-noarch.tgz .
