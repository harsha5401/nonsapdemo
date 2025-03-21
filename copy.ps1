$SourceFolder = 'C:\Users\harsha\sample_dotnetapp_ADOproject1-main'
$DestinationFolder = 'C:\Users\harsha\ERMS'

# Ensure the destination folder exists
if (!(Test-Path -Path $DestinationFolder)) {
    New-Item -ItemType Directory -Path $DestinationFolder -Force
}

# Copy files
Copy-Item -Path "$SourceFolder\*" -Destination $DestinationFolder -Recurse -Force

Write-Host 'Files copied successfully.'
