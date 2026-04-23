# Start Azurite if not already running
$azurite = docker ps --filter "ancestor=mcr.microsoft.com/azure-storage/azurite" --format "{{.ID}}" 2>$null
if (-not $azurite) {
    Write-Host "Starting Azurite..." -ForegroundColor Cyan
    docker run -d -p 10000:10000 -p 10001:10001 -p 10002:10002 `
        mcr.microsoft.com/azure-storage/azurite `
        azurite --blobHost 0.0.0.0 --queueHost 0.0.0.0 --tableHost 0.0.0.0 --skipApiVersionCheck | Out-Null
    Start-Sleep 2
}

# Activate venv and start
if (Test-Path ".venv\Scripts\Activate.ps1") {
    . .\.venv\Scripts\Activate.ps1
}

func start
