#!/bin/bash

# ML file list
files=(
  "selfie_segmentation_landscape.tflite"
  "selfie_segmentation_solution_simd_wasm_bin.data"
  "selfie_segmentation_solution_simd_wasm_bin.js"
  "selfie_segmentation_solution_simd_wasm_bin.wasm"
  "selfie_segmentation_solution_wasm_bin.js"
  "selfie_segmentation_solution_wasm_bin.wasm"
  "selfie_segmentation.binarypb"
  "selfie_segmentation.js"
  "selfie_segmentation.tflite"
)

# CDN url
base_url="https://cdn.jsdelivr.net/npm/@mediapipe/selfie_segmentation/"

# Set target folder
target_folder="${1:-./}"
mkdir -p "$target_folder"

# Download files
for file in "${files[@]}"; do
  echo "Downloading $file to $target_folder..."
  curl -o "$target_folder/$file" "$base_url$file"
  if [ $? -eq 0 ]; then
    echo "$file downloaded successfully."
  else
    echo "Failed to download $file."
  fi
done

echo "All files processed."
