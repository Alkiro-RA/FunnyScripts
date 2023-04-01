# Run VS Code in new window
Write-Host "Starting VS Code..."
Start-Process "code" -ArgumentList "-n"
Write-Host "VS Code is running"

# Run Git Bash at repository's path
$location = "E:\MyPHP\my-backend"
Write-Host "Starting Git Bash at '$location'..."
Start-Process "E:\Programy\Git\bin\bash.exe" -WorkingDirectory $location
Write-Host "Git Bash is running"

# Run Docker
Write-Host "Starting Docker..."
Invoke-Item "C:\Program Files\Docker\Docker\Docker Desktop.exe"

# Wait for the Docker daemon to be ready
Write-Host "Waiting for Docker to start up."
Start-Sleep -Seconds 20

# Set path to container's directory
$location = "E:\MyPHP\my-backend\php-oop-zoo"

# Run cmd.exe
Start-Process -FilePath "cmd.exe" -WorkingDirectory $location

# Run 'docker-compose up" from cmd.exe
$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate('Command Prompt')
Start-Sleep 1
$wshell.SendKeys('docker compose up')
$wshell.SendKeys("{ENTER}")

# Press something to close
Read-Host -Prompt "Press Enter to exit"