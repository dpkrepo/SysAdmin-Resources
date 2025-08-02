# SysAdmin-Resources

## This is the entire Folder Structure which is found in master branch.
```
SysAdmin-Resources/
├── Documentation/
│   ├── SOPs/
│   ├── Network-Diagrams/
│   ├── AD-Designs/
│   └── Change-Logs/
├── Scripts/
│   ├── PowerShell/
│   │   ├── User-Management/
│   │   ├── AD-Automation/
│   │   └── Monitoring/
│   ├── Bash/
│   │   ├── User-Setup/
│   │   ├── Package-Management/
│   │   └── Backup/
│   └── Misc/
├── Configurations/
│   ├── Windows/
│   │   ├── GPO-Exports/
│   │   ├── DHCP/
│   │   └── DNS/
│   ├── Linux/
│   │   ├── SSH/
│   │   ├── Firewall/
│   │   └── Cron/
│   └── Azure/
│       ├── ARM-Templates/
│       ├── Terraform/
│       └── CLI-Scripts/
├── Tools/
│   ├── Sysinternals/
│   ├── AD-Tools/
│   ├── Network-Utilities/
│   └── Linux-Utils/
├── Logs/
│   ├── Windows-Event/
│   ├── Linux-Syslog/
│   └── Audit-Trails/
├── Projects/
│   ├── Infrastructure-Upgrades/
│   ├── Migration-Plans/
│   └── CI-CD-Implementations/
└── Training/
    ├── Certifications/
    │   ├── AZ-104/
    │   ├── AZ-305/
    │   └── AZ-400/
    ├── Lab-Guides/
    └── Notes/
```
### How to create is entire structure using simple PowerShell Script
```
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
```

Here's a step-by-step guide to help you initialize a GitHub repository with the folder structure and starter README.md files. You can do this locally and then push it to GitHub.

### Step 1: Create the Folder Structure Locally
You can use the PowerShell script I shared earlier to generate the folders on your machine. Once done, move into the base directory:
```
cd C:\SysAdmin-Resources
```

### Step 2: Initialize a Git Repository
```
git init
```

This creates a .git folder and prepares the directory for version control.

### Step 3: Add Starter README Files
Here’s a sample script to create minimal README.md files in each top-level folder:

```
$topFolders = @(
    "Documentation",
    "Scripts",
    "Configurations",
    "Tools",
    "Logs",
    "Projects",
    "Training"
)

foreach ($folder in $topFolders) {
    $readmePath = "C:\SysAdmin-Resources\$folder\README.md"
    $content = "# $folder`n`nThis folder contains resources related to $folder."
    Set-Content -Path $readmePath -Value $content
}
```
### Step 4: Create a GitHub Repo and Push
- Go to GitHub and create a new repository (e.g., SysAdmin-Resources).
- Back in PowerShell or Git Bash:
```
git remote add origin https://github.com/YOUR_USERNAME/SysAdmin-Resources.git
git add .
git commit -m "Initial commit with folder structure and README files"
git push -u origin master
```

Replace YOUR_USERNAME with your GitHub username.

