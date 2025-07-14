#!/bin/bash

input_basename="resume-viktor-tselov"
script_dir=$(cd "$(dirname "$0")" && pwd)
input_filename="$script_dir/$input_basename.html"
output_dir="$script_dir/out"
mkdir -p "$output_dir"
head_height=$(git rev-list --count HEAD)
output_pdf="$output_dir/$input_basename-$head_height.pdf"
"/c/Program Files/Google/Chrome/Application/chrome.exe" --headless --run-all-compositor-stages-before-draw --no-pdf-header-footer --print-to-pdf="$output_pdf" "$input_filename"
