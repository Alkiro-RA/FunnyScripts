# Run VS Code in new window
$projectPath = "E:\MyPHP\my-backend\php-exceptions\app\public"
Write-Host "Starting VS Code..."
Start-Process "code" -ArgumentList "-n", $projectPath
Write-Host "VS Code is running"

# Run Git Bash at repository's path
$repoPath = "E:\MyPHP\my-backend"
Write-Host "Starting Git Bash at '$repoPath'..."
Start-Process "E:\Programy\Git\bin\bash.exe" -WorkingDirectory $repoPath
Write-Host "Git Bash is running"

# Run Docker
Write-Host "Starting Docker..."
Invoke-Item "C:\Program Files\Docker\Docker\Docker Desktop.exe"

# Wait for the Docker daemon to be ready
Write-Host "Waiting for Docker to start up."
Start-Sleep -Seconds 25

# Set path to container's directory
$containerPath = "E:\MyPHP\my-backend\php-exceptions"

# Run cmd.exe
Start-Process -FilePath "cmd.exe" -WorkingDirectory $containerPath

# Run 'docker-compose up" from cmd.exe
$wshell = New-Object -ComObject wscript.shell
$wshell.AppActivate('Command Prompt')
Start-Sleep 1
$wshell.SendKeys('docker compose up')
$wshell.SendKeys("{ENTER}")

# Press something to close
Read-Host -Prompt "Press Enter to exit"