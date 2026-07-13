# PowerShell Scripts Repository

A curated collection of the PowerShell scripts currently present in this repository.

## Directory Structure (current)

### Active Directory
- **Export Users.ps1** - Exports user information from Active Directory to a CSV file.

### Azure DevOps
- **Get-AgentPoolInfo.ps1** - Retrieves detailed information about Azure DevOps agent pools.
- **Get-AzureDevOpsProjectUsers.ps1** - Exports all users from a specified Azure DevOps project to CSV.
- **Remove-AgentQueue.ps1** - Removes agent pool queues from Azure DevOps projects.
- **Remove-AgentQueueFromAllProjects.ps1** - Removes an agent queue from all projects in an organization.
- **AddOrUpdate-AzDoUser.ps1** - Adds or updates users in Azure DevOps with specified licenses.
- **New-AzureDevOpsPullRequest.ps1** - Creates a new pull request in Azure DevOps.

### Azure
- **Migrate-AzKeyVaultSecrets.ps1** - Migrates secrets from one Azure Key Vault to another.

### Entra ID
- **Create-FederatedCredential.ps1** - Creates federated credentials for Azure AD applications.

### Install Software
- **Install-Agents.ps1** - Automated installation of various agents.
- **install-software.ps1** - Software package installation automation.
- **packages.config** - Configuration file for software packages (used by `install-software.ps1`).

### M365
- **EnableMFA.ps1** - Enables Multi-Factor Authentication for users.
- **Get-MFAStatus.ps1** - Retrieves MFA status for users.
- **GetMFAStatusReport.ps1** - Generates comprehensive MFA status reports.
- **MFAstatus.ps1** - MFA status management tool.
- **MFAstatus2.ps1** - Enhanced MFA status management.
- **O365UserLicenseReport.ps1** - Generates Office 365 user license reports.

### MISC
- **CheckServersDNS.ps1** - DNS configuration verification tool.
- **Send-MailInfosec.ps1** - Automated infosec email notifications.
- **Send-MailUltima.ps1** - New VM notification system.

### Script Templates
- **cmdletbinding.ps1** - Template for advanced function cmdletbinding.
- **General Template - CSV.ps1** - General script template for CSV-based tasks.

## Usage

Each script contains usage examples and prerequisites in its header comments. Review the top of a script for details before running.

### Example Usage

```powershell
# Azure Key Vault Migration
.\Azure\Migrate-AzKeyVaultSecrets.ps1 -SourceVaultName "source-kv" -TargetVaultName "target-kv" -AzureSubscriptionId "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

# Azure DevOps User Management
.\AzureDevOps\AddOrUpdate-AzDoUser.ps1 -Organization "your-org" -UserEmail "user@example.com" -AccessLevel "basic" -PAT "your-pat"

# MFA Management
.\M365\EnableMFA.ps1 -UserPrincipalName "user@domain.com"
```

## Security Notes

- Store sensitive information (like PAT tokens) securely.
- Use appropriate permission levels for each script.
- Review scripts before executing in production environments.

## License

This repository is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome. Please open a Pull Request or an Issue to discuss changes.

---

If you'd like, I can also search and remove any other leftover references outside of `README.md`.
