<#
.SYNOPSIS
    Runs quick, read-only network connectivity checks.

.DESCRIPTION
    Level 1 Help Desk tool. Shows the device IP, default gateway, and tests
    reachability to the local gateway, the internet, and DNS resolution.
    Helps decide if a problem is local, internet-wide, or DNS-related.
    Read-only - makes no changes.

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Read-only (uses ping and DNS lookups only).
    Usage  : .\Check-NetworkStatus.ps1
#>

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "        Network Status Check" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host ""

try {
    # --- Local IPv4 address ---
    $ip = (Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue |
        Where-Object { $_.IPAddress -ne '127.0.0.1' -and $_.PrefixOrigin -ne 'WellKnown' } |
        Select-Object -First 1 -ExpandProperty IPAddress)
    if (-not $ip) { $ip = "Not detected" }
    Write-Host ("Local IP Address : {0}" -f $ip)

    # --- Default gateway (the local router) ---
    $gateway = (Get-NetRoute -DestinationPrefix '0.0.0.0/0' -ErrorAction SilentlyContinue |
        Sort-Object RouteMetric |
        Select-Object -First 1 -ExpandProperty NextHop)
    if (-not $gateway) { $gateway = "Not detected" }
    Write-Host ("Default Gateway  : {0}" -f $gateway)
    Write-Host ""

    # --- Test 1: can we reach the local gateway? ---
    Write-Host "Testing local gateway..." -ForegroundColor Yellow
    if ($gateway -ne "Not detected" -and (Test-Connection -ComputerName $gateway -Count 1 -Quiet)) {
        Write-Host "  Gateway reachable      : YES" -ForegroundColor Green
    } else {
        Write-Host "  Gateway reachable      : NO (local network / cable issue)" -ForegroundColor Red
    }

    # --- Test 2: can we reach the internet? ---
    Write-Host "Testing internet (8.8.8.8)..." -ForegroundColor Yellow
    if (Test-Connection -ComputerName "8.8.8.8" -Count 1 -Quiet) {
        Write-Host "  Internet reachable     : YES" -ForegroundColor Green
    } else {
        Write-Host "  Internet reachable     : NO (internet/ISP issue)" -ForegroundColor Red
    }

    # --- Test 3: does DNS resolve names? ---
    Write-Host "Testing DNS (microsoft.com)..." -ForegroundColor Yellow
    try {
        Resolve-DnsName -Name "microsoft.com" -ErrorAction Stop | Out-Null
        Write-Host "  DNS resolution         : YES" -ForegroundColor Green
    } catch {
        Write-Host "  DNS resolution         : NO (DNS issue - try ipconfig /flushdns)" -ForegroundColor Red
    }

    Write-Host ""
    Write-Host "Network check complete." -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Network check could not complete." -ForegroundColor Red
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
