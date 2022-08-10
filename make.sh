#!/bin/bash

rm -r -v builder.sh
cat build-info/build-list/.opening build-info/build-list/* >> builder.sh
chmod u+x builder.sh