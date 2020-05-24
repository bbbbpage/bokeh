#!/bin/bash

set -x #echo on

mv conda-bld-noarch/conda-bld-noarch.tgz $HOME
pushd $HOME
tar xvzf conda-bld-noarch.tgz -C "/usr/share/miniconda3/envs/bk-test"
popd
tar xvzf bokehjs-build/bokehjs-build.tgz
