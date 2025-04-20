#!/bin/bash

FOLDER="$HOME/Imagenes/fondos"
IMG=$(find "$FOLDER" -type f | shuf -n 1)

swww img "$IMG" --transition-type any --transition-duration 2
