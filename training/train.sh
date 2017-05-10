#!/bin/bash
set -x
set -a
sort -R manifest.txt > /tmp/manifest2.txt
sed 1,100d /tmp/manifest2.txt > train.txt
sed 100q /tmp/manifest2.txt > test.txt

report_every=1000
save_every=1000
maxtrain=50000
target_height=48
dewarp=center
display_every=1000
test_every=1000
hidden=100
lrate=1e-4
save_name=arabic
clstmocrtrain train.txt test.txt
