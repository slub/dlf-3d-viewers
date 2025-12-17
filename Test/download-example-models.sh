#!/bin/bash

EXAMPLE_DIR="./models/examples/"
[ -d $EXAMPLE_DIR ] && rm -r $EXAMPLE_DIR
mkdir $EXAMPLE_DIR

wget "https://github.com/cnr-isti-vclab/3DHOP/raw/refs/heads/master/examples/models/gargo.ply" -P $EXAMPLE_DIR/ply
