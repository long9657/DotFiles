# Get the current working directory
$currentDirectory = Get-Location

# Define the destination directory
$destinationDirectory = "$env:LOCALAPPDATA\clangd"

# Create the destination directory if it doesn't exist
if (-not (Test-Path -Path $destinationDirectory)) {
    New-Item -ItemType Directory -Path $destinationDirectory
}

# Copy all files from the current directory to the clangd directory in %LOCALAPPDATA%
Copy-Item -Path "$currentDirectory\*" -Destination $destinationDirectory -Recurse -Force

Write-Output "Files copied from $currentDirectory to $destinationDirectory"
