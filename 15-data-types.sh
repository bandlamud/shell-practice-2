#!/bin/bash

NUMBER1=100
NUMBER2=200

SUM=$(($NUMBER1+$NUMBER2))

echo "sum is ${SUM}"

Leaders=("Modi","Gandhi","Ambedkar")

echo "ALL leaders: ${Leaders[@]}"
echo "First leaders: ${Leaders[1]}"

