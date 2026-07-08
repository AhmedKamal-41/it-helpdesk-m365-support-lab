<#
.SYNOPSIS
    Collects a quick, read-only health snapshot of a Windows device.

.DESCRIPTION
    Level 1 Help Desk tool. Gathers computer name, current user, OS version,
    IP address, disk free space, last boot time, uptime, and network status.
    This script only READS information - it changes nothing on the system.

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Read-only. No changes are made.
    Usage  : Right-click > Run with PowerShell, or run: .\Get-DeviceHealth.ps1
#>

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "        Device Health Check - QueensTech" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan

try {
    # --- Computer name and current user ---
    $computerName = $env:COMPUTERNAME
    $currentUser  = $env:USERNAME

    # --- Operating system info (name, version, last boot) ---
    $os          = Get-CimInstance -ClassName Win32_OperatingSystem -ErrorAction Stop
    $osName      = $os.Caption
    $osVersion   = $os.Version
    $lastBoot    = $os.LastBootUpTime
    $uptime      = (Get-Date) - $lastBoot
    $uptimeText  = "{0} days, {1} hours, {2} minutes" -f $uptime.Days, $uptime.Hours, $uptime.Minutes

    # --- IP address (first active IPv4 that is not loopback) ---
    $ipAddress = (Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue |
        Where-Object { $_.IPAddress -ne '127.0.0.1' -and $_.PrefixOrigin -ne 'WellKnown' } |
        Select-Object -First 1 -ExpandProperty IPAddress)
    if (-not $ipAddress) { $ipAddress = "Not detected" }

    # --- Disk free space on the system drive (C:) ---
    $systemDrive = ($env:SystemDrive).TrimEnd(':')
    $disk        = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='$($env:SystemDrive)'" -ErrorAction Stop
    $freeGB      = [math]::Round($disk.FreeSpace / 1GB, 1)
    $totalGB     = [math]::Round($disk.Size / 1GB, 1)
    $percentFree = if ($disk.Size -gt 0) { [math]::Round(($disk.FreeSpace / $disk.Size) * 100, 1) } else { 0 }

    # --- Simple network status: can we reach the internet? ---
    $networkStatus = "Offline"
    if (Test-Connection -ComputerName "8.8.8.8" -Count 1 -Quiet -ErrorAction SilentlyContinue) {
        $networkStatus = "Online"
    }

    # --- Print a clean report ---
    Write-Host ""
    Write-Host ("Computer Name    : {0}" -f $computerName)
    Write-Host ("Current User     : {0}" -f $currentUser)
    Write-Host ("OS               : {0}" -f $osName)
    Write-Host ("OS Version       : {0}" -f $osVersion)
    Write-Host ("IP Address       : {0}" -f $ipAddress)
    Write-Host ("Disk Free (C:)   : {0} GB of {1} GB ({2}% free)" -f $freeGB, $totalGB, $percentFree)
    Write-Host ("Last Boot Time   : {0}" -f $lastBoot)
    Write-Host ("Uptime           : {0}" -f $uptimeText)

    if ($networkStatus -eq "Online") {
        Write-Host ("Network Status   : {0}" -f $networkStatus) -ForegroundColor Green
    } else {
        Write-Host ("Network Status   : {0}" -f $networkStatus) -ForegroundColor Yellow
    }

    # --- Friendly low-disk warning ---
    if ($percentFree -lt 15) {
        Write-Host ""
        Write-Host "WARNING: Low disk space (under 15% free). Consider cleanup." -ForegroundColor Yellow
    }

    Write-Host ""
    Write-Host "Health check complete." -ForegroundColor Green
}
catch {
    Write-Host ""
    Write-Host "ERROR: Could not complete the health check." -ForegroundColor Red
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
