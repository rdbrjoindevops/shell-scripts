#!/bin/bash

MOVIES=("bahubal" "salar" "kalki")

echo "First movie: ${movies[0]}"
echo "second movie: ${MOVIES[1]}"
echo "Third movie: ${MOVIES[2]}"

echo "ALL movies are: ${MOVIES[$@]}"

