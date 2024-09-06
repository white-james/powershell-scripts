# install-software.ps1

# Path where the Azure CustomScriptExtension downloads the files
$downloadDirectory = "C:\Packages\Plugins\Microsoft.Compute.CustomScriptExtension\1.10.17\Downloads\1"

# Paths to the downloaded child scripts
$chocolateyScriptPath = "$downloadDirectory\Install-Chocolatey.ps1"
$iisScriptPath = "$downloadDirectory\automate-iis.ps1"

# Check if the Chocolatey script exists and execute it
if (Test-Path $chocolateyScriptPath) {
    Write-Host "Executing Chocolatey installation script..."
    powershell -ExecutionPolicy Unrestricted -File $chocolateyScriptPath
} else {
    Write-Host "Chocolatey installation script not found at $chocolateyScriptPath"
}

# Check if the IIS script exists and execute it
if (Test-Path $iisScriptPath) {
    Write-Host "Executing IIS installation script..."
    powershell -ExecutionPolicy Unrestricted -File $iisScriptPath
} else {
    Write-Host "IIS installation script not found at $iisScriptPath"
}

Write-Host "All scripts have been executed."
