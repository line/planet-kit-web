# ML file list
$files = @(
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
$base_url = "https://cdn.jsdelivr.net/npm/@mediapipe/selfie_segmentation/"

# Set target folder
$target_folder = if ($args.Length -gt 0) { $args[0] } else { "./" }
if (!(Test-Path -Path $target_folder)) {
    New-Item -ItemType Directory -Path $target_folder | Out-Null
}

# Download files
foreach ($file in $files) {
    Write-Host "Downloading $file to $target_folder..."
    $url = "$base_url$file"
    $output = "$target_folder/$file"
    try {
        Invoke-WebRequest -Uri $url -OutFile $output
        Write-Host "$file downloaded successfully."
    } catch {
        Write-Host "Failed to download $file."
    }
}

Write-Host "All files processed."