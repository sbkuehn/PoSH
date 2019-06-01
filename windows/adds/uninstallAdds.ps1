Param{
    [string] [Parameter(Mandatory = $true)] $hostname
}

# Uninstalls Active Directory role. For a full list of available parameters, use Get-Help Uninstall-ADDSDomainController.
Uninstall-ADDSDomainController

# Unstall Active Directory controller w/ force removal command. For a full list of available parameters, use Get-Help Uninstall-ADDSDomainController
Uninstall-ADDSDomainController -Credential (Get-Credential) -ForceRemoval

#Once the server has been demoted and rebooted, run Uninstall-WindowsFeature to remove the ADDS server role:
Uninstall-WindowsFeature AD-Domain-Services -IncludeManagementTools