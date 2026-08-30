#!/bin/sh
printf '\033c\033]0;%s\a' Circute Game Jam
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Circute Game Jam.x86_64" "$@"
