#!/bin/bash
set -ev
echo $OF_ROOT
cd $OF_ROOT
pwd
ls -la
cp scripts/linux/template/linux/Makefile examples/empty/emptyExample/
cp scripts/linux/template/linux/config.make examples/empty/emptyExample/
cd examples/empty/emptyExample
make Debug
