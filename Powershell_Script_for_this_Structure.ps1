$base = "C:\SysAdmin-Resources"

$folders = @(
    "Documentation\SOPs",
    "Documentation\Network-Diagrams",
    "Documentation\AD-Designs",
    "Documentation\Change-Logs",
    "Scripts\PowerShell\User-Management",
    "Scripts\PowerShell\AD-Automation",
    "Scripts\PowerShell\Monitoring",
    "Scripts\Bash\User-Setup",
    "Scripts\Bash\Package-Management",
    "Scripts\Bash\Backup",
    "Scripts\Misc",
    "Configurations\Windows\GPO-Exports",
    "Configurations\Windows\DHCP",
    "Configurations\Windows\DNS",
    "Configurations\Linux\SSH",
    "Configurations\Linux\Firewall",
    "Configurations\Linux\Cron",
    "Configurations\Azure\ARM-Templates",
    "Configurations\Azure\Terraform",
    "Configurations\Azure\CLI-Scripts",
    "Tools\Sysinternals",
    "Tools\AD-Tools",
    "Tools\Network-Utilities",
    "Tools\Linux-Utils",
    "Logs\Windows-Event",
    "Logs\Linux-Syslog",
    "Logs\Audit-Trails",
    "Projects\Infrastructure-Upgrades",
    "Projects\Migration-Plans",
    "Projects\CI-CD-Implementations",
    "Training\Certifications\AZ-104",
    "Training\Certifications\AZ-305",
    "Training\Certifications\AZ-400",
    "Training\Lab-Guides",
    "Training\Notes"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path (Join-Path $base $folder) -Force
}

Write-Host "SysAdmin folder structure created at $base"