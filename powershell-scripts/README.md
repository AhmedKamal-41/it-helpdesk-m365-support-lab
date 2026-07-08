# PowerShell Scripts

Beginner-friendly, **safe** Level 1 Help Desk scripts for a Windows 11 / Microsoft 365 environment. Each script includes comments, clean output, and simple error handling. Most are **read-only**.

| Script | What it does | Changes system? |
|--------|--------------|-----------------|
| `Get-DeviceHealth.ps1` | Snapshot: computer name, user, OS, IP, disk, uptime, network | No (read-only) |
| `Check-DiskSpace.ps1` | Lists drives and flags low free space | No (read-only) |
| `Check-NetworkStatus.ps1` | Tests gateway, internet, and DNS connectivity | No (read-only) |
| `Export-InstalledApps.ps1` | Exports installed apps to a CSV report on the Desktop | Read-only + writes 1 CSV |
| `Restart-PrintSpooler.ps1` | Restarts the Print Spooler to clear stuck print jobs | Restarts Spooler service only |
| `Clear-TempFiles.ps1` | Clears the current user's TEMP folder to free space | User TEMP only (safe) |
| `New-User-Onboarding-Checklist.ps1` | Generates a per-hire onboarding checklist file | Writes 1 text file (no accounts) |

## How to Run
1. Open **PowerShell** (use **Run as Administrator** for `Restart-PrintSpooler.ps1`).
2. Change to this folder, e.g. `cd .\powershell-scripts`.
3. Run a script, e.g. `.\Get-DeviceHealth.ps1`.

> If scripts are blocked by execution policy, you can allow local scripts for your session with:
> `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`
> (This applies only to the current window and resets when you close it.)

## Safety Notes
- No script contains real credentials or secrets.
- Read-only scripts make **no** changes to the system.
- `Clear-TempFiles.ps1` only touches the current user's TEMP folder and skips in-use files.
- `New-User-Onboarding-Checklist.ps1` only creates a checklist document — it does **not** create real accounts.
