<#
.SYNOPSIS
    Safely clears the current user's temporary files to free disk space.

.DESCRIPTION
    Level 1 Help Desk tool. Deletes files from the current user's TEMP folder
    only. It skips files that are in use, reports how much space was freed,
    and NEVER touches system folders or personal documents.

    SAFETY NOTES:
      - Only targets $env:TEMP (the user's own temp folder).
      - Files locked/in use are skipped automatically (no forced kills).
      - Does not touch C:\Windows, Program Files, or user documents.

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Limited to the current user's TEMP folder. Close open apps first.
    Usage  : .\Clear-TempFiles.ps1
#>

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "        Clear Temporary Files" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host ""

$tempPath = $env:TEMP
Write-Host ("Target folder : {0}" -f $tempPath)
Write-Host "Only this user's temp folder will be cleaned. System files are untouched." -ForegroundColor Yellow
Write-Host ""

try {
    # Measure space used before cleanup
    $before = Get-ChildItem -Path $tempPath -Recurse -Force -ErrorAction SilentlyContinue |
        Measure-Object -Property Length -Sum
    $beforeMB = if ($before.Sum) { [math]::Round($before.Sum / 1MB, 1) } else { 0 }

    Write-Host ("Space used before : {0} MB" -f $beforeMB)
    Write-Host "Removing temporary files (in-use files are skipped)..." -ForegroundColor Yellow

    # Remove items; -ErrorAction SilentlyContinue skips anything locked/in use
    Get-ChildItem -Path $tempPath -Recurse -Force -ErrorAction SilentlyContinue |
        Remove-Item -Recurse -Force -ErrorAction SilentlyContinue

    # Measure again to report how much we freed
    $after = Get-ChildItem -Path $tempPath -Recurse -Force -ErrorAction SilentlyContinue |
        Measure-Object -Property Length -Sum
    $afterMB = if ($after.Sum) { [math]::Round($after.Sum / 1MB, 1) } else { 0 }
    $freedMB = [math]::Round($beforeMB - $afterMB, 1)

    Write-Host ("Space used after  : {0} MB" -f $afterMB)
    Write-Host ""
    Write-Host ("Cleanup complete. Approximately {0} MB freed." -f $freedMB) -ForegroundColor Green
    Write-Host "(Some files may remain if they were open in another program.)" -ForegroundColor Gray
}
catch {
    Write-Host "ERROR: Cleanup could not complete." -ForegroundColor Red
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
