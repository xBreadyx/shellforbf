#!/bin/bash
rnd=$(pwgen 20 1 -n 1)
random=$(echo $rnd | sha256sum | cut -c1-64)
echo $random
echo ./brainflayer -c e -v -b eth.blf -o found.txt -I $random>core1.bash
rnd=$(pwgen 25 1 -n 1)
random=$(echo $rnd | sha256sum | cut -c1-64)
echo $random
echo ./brainflayer -c e -v -b eth.blf -o found.txt -I $random>core2.bash
rnd=$(pwgen 30 1 -n 1)
random=$(echo $rnd | sha256sum | cut -c1-64)
echo $random
echo ./brainflayer -c e -v -b eth.blf -o found.txt -I $random>core3.bash
rnd=$(pwgen 35 1 -n 1)
random=$(echo $rnd | sha256sum | cut -c1-64)
echo $random
echo ./brainflayer -c e -v -b eth.blf -o found.txt -I $random>core4.bash
rnd=$(pwgen 40 1 -n 1)
random=$(echo $rnd | sha256sum | cut -c1-64)
echo $random
echo ./brainflayer -c e -v -b eth.blf -o found.txt-I $random>core5.bash
./masscore.sh