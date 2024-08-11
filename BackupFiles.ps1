# Define source and destination directories
$sourceDir = "C:\ProjectTests\MainFileFolder"
$destDir = "C:\ProjectTests\BackUp"

# Check if destination directory exists, if not, create it
if (-not (Test-Path -Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir
}

# Copy files from source to destination
Copy-Item -Path "$sourceDir\*" -Destination $destDir -Recurse -Force

# Log the backup operation
$logFile = "C:\ProjectTests\BackUp\BackupLog.txt"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content -Path $logFile -Value "Backup completed on $timestamp"