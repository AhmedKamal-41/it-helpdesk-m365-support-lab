<#
.SYNOPSIS
    Shows free disk space for all drives and flags any that are low.

.DESCRIPTION
    Level 1 Help Desk tool. Lists each fixed drive with total space, free
    space, and percent free. Warns when a drive falls below 15% free.
    Read-only - this script does not delete or change anything.

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Read-only.
    Usage  : .\Check-DiskSpace.ps1
#>

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "        Disk Space Check" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host ""

try {
    # Get only fixed local disks (DriveType 3 = local hard disk)
    $drives = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3" -ErrorAction Stop

    foreach ($drive in $drives) {
        $freeGB      = [math]::Round($drive.FreeSpace / 1GB, 1)
        $totalGB     = [math]::Round($drive.Size / 1GB, 1)
        $percentFree = if ($drive.Size -gt 0) { [math]::Round(($drive.FreeSpace / $drive.Size) * 100, 1) } else { 0 }

        Write-Host ("Drive {0}  {1} GB free of {2} GB  ({3}% free)" -f $drive.DeviceID, $freeGB, $totalGB, $percentFree)

        # Color-coded warning levels
        if ($percentFree -lt 10) {
            Write-Host "   -> CRITICAL: Under 10% free. Cleanup needed now." -ForegroundColor Red
        }
        elseif ($percentFree -lt 15) {
            Write-Host "   -> WARNING: Under 15% free. Plan a cleanup." -ForegroundColor Yellow
        }
        else {
            Write-Host "   -> OK" -ForegroundColor Green
        }
        Write-Host ""
    }

    Write-Host "Disk space check complete." -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Could not read disk information." -ForegroundColor Red
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
