<#
.SYNOPSIS
    Exports a list of installed applications to a CSV file.

.DESCRIPTION
    Level 1 Help Desk tool. Reads installed programs from the registry and
    saves Name, Version, Publisher, and Install Date to a CSV on the Desktop.
    Useful for software inventory, audits, and troubleshooting.
    Read-only - it only reads the registry and writes one CSV report.

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Read-only registry read + writes a CSV report.
    Usage  : .\Export-InstalledApps.ps1
#>

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "     Export Installed Applications" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host ""

try {
    # Registry locations that list installed software (64-bit and 32-bit)
    $registryPaths = @(
        "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*",
        "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*"
    )

    Write-Host "Reading installed programs..." -ForegroundColor Yellow

    $apps = Get-ItemProperty -Path $registryPaths -ErrorAction SilentlyContinue |
        Where-Object { $_.DisplayName } |          # keep only real named apps
        Select-Object `
            @{Name='Name';       Expression={$_.DisplayName}},
            @{Name='Version';    Expression={$_.DisplayVersion}},
            @{Name='Publisher';  Expression={$_.Publisher}},
            @{Name='InstallDate';Expression={$_.InstallDate}} |
        Sort-Object Name -Unique

    $count = ($apps | Measure-Object).Count

    # Save the report to the Desktop with a clear file name
    $outputFile = Join-Path ([Environment]::GetFolderPath("Desktop")) "InstalledApps-$env:COMPUTERNAME.csv"
    $apps | Export-Csv -Path $outputFile -NoTypeInformation -Encoding UTF8

    Write-Host ("Found {0} installed applications." -f $count) -ForegroundColor Green
    Write-Host ("Report saved to: {0}" -f $outputFile) -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Could not export installed applications." -ForegroundColor Red
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
