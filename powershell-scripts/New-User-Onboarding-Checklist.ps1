<#
.SYNOPSIS
    Generates a personalized new-hire onboarding checklist as a text file.

.DESCRIPTION
    Level 1 Help Desk tool. Prompts for basic new-hire details and produces a
    ready-to-use onboarding checklist saved to the Desktop. This does NOT
    create real accounts - it only builds a checklist document the technician
    follows in the M365 / Entra ID admin center.

    (Safe demo/lab script - performs no changes to any directory or account.)

.NOTES
    Author : QueensTech IT Help Desk Lab
    Safe   : Only writes a text checklist file. No accounts are created.
    Usage  : .\New-User-Onboarding-Checklist.ps1
#>

Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "     New Hire Onboarding Checklist" -ForegroundColor Cyan
Write-Host "=======================================" -ForegroundColor Cyan
Write-Host "This tool builds a checklist file. It does NOT create real accounts." -ForegroundColor Yellow
Write-Host ""

try {
    # Gather basic details from the technician
    $fullName   = Read-Host "New hire full name"
    $department = Read-Host "Department"
    $jobTitle   = Read-Host "Job title"
    $manager    = Read-Host "Manager"
    $startDate  = Read-Host "Start date (e.g. 2026-07-14)"
    $remote     = Read-Host "Remote worker? (yes/no)"

    # Suggest a username: first initial + last name, lowercase
    $nameParts = $fullName.Trim() -split '\s+'
    if ($nameParts.Count -ge 2) {
        $suggestedUser = ($nameParts[0].Substring(0,1) + $nameParts[-1]).ToLower()
    } else {
        $suggestedUser = $fullName.ToLower()
    }
    $suggestedEmail = "$suggestedUser@queenstech.example"

    # Build the checklist content
    $vpnLine = if ($remote -match '^(y|yes)$') { "[ ] Add to VPN Users group (remote worker)" } else { "[ ] VPN not required (office-based)" }

    $checklist = @"
============================================
 NEW HIRE ONBOARDING CHECKLIST - QueensTech
============================================
Full Name        : $fullName
Suggested User   : $suggestedUser
Suggested Email  : $suggestedEmail
Department       : $department
Job Title        : $jobTitle
Manager          : $manager
Start Date       : $startDate
--------------------------------------------

IDENTITY & LICENSING
[ ] Create Entra ID account ($suggestedUser)
[ ] Set display name and email
[ ] Assign Microsoft 365 license (Basic / Standard / Premium)
[ ] Require MFA registration at first sign-in

ACCESS & GROUPS
[ ] Add to $department Team group
[ ] Add to New Hires group
[ ] Add to Printer Access Group
$vpnLine
[ ] Grant shared mailbox access (if role requires)

MAILBOX & APPS
[ ] Confirm mailbox provisioned (send test email)
[ ] Confirm Outlook, Teams, OneDrive ready

DEVICE SETUP
[ ] Image Windows 11 device
[ ] Install M365 apps + role software
[ ] Run Get-DeviceHealth.ps1 before handoff
[ ] Asset-tag and record in inventory

HANDOFF
[ ] Provide Day-1 login guide
[ ] Brief the manager ($manager)
[ ] Log all steps in the onboarding ticket
============================================
"@

    # Save to the Desktop with a clear file name
    $safeName    = ($fullName -replace '[^a-zA-Z0-9]', '_')
    $outputFile  = Join-Path ([Environment]::GetFolderPath("Desktop")) "Onboarding-$safeName.txt"
    $checklist | Out-File -FilePath $outputFile -Encoding UTF8

    Write-Host ""
    Write-Host "Checklist created." -ForegroundColor Green
    Write-Host ("Saved to: {0}" -f $outputFile) -ForegroundColor Green
}
catch {
    Write-Host "ERROR: Could not create the checklist." -ForegroundColor Red
    Write-Host ("Details: {0}" -f $_.Exception.Message) -ForegroundColor Red
}
