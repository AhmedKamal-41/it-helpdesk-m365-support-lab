<#
.SYNOPSIS
    Safely restarts the Windows Print Spooler service to fix stuck print jobs.

.DESCRIPTION
    Level 1 Help Desk tool. A hung Print Spooler is a very common cause of
    "my document won't print." This script checks the service, restarts it,
    and confirms it is running again. It only touches the Spooler service.

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Restarts only the 'Spooler' service. May require running as Administrator.
    Usage  : Run PowerShell as Administrator, then: .\Restart-PrintSpooler.ps1
#>

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "     Restart Print Spooler Service" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host ""

$serviceName = "Spooler"

try {
    # Confirm the service exists and show its current state
    $service = Get-Service -Name $serviceName -ErrorAction Stop
    Write-Host ("Current status : {0}" -f $service.Status)

    Write-Host "Restarting the Print Spooler..." -ForegroundColor Yellow
    Restart-Service -Name $serviceName -Force -ErrorAction Stop

    # Give it a moment, then re-check
    Start-Sleep -Seconds 2
    $service = Get-Service -Name $serviceName

    if ($service.Status -eq 'Running') {
        Write-Host ("New status     : {0}" -f $service.Status) -ForegroundColor Green
        Write-Host ""
        Write-Host "Print Spooler restarted successfully." -ForegroundColor Green
        Write-Host "Ask the user to try printing again." -ForegroundColor Green
    }
    else {
        Write-Host ("New status     : {0}" -f $service.Status) -ForegroundColor Yellow
        Write-Host "The service did not return to Running. Escalate if printing still fails." -ForegroundColor Yellow
    }
}
catch {
    Write-Host "ERROR: Could not restart the Print Spooler." -ForegroundColor Red
    Write-Host "Tip: Run PowerShell as Administrator and try again." -ForegroundColor Yellow
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
