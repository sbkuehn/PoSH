Param(
    [string] [Mandatory=$true] $compName
    [string] [Mandatory=$true] $localCred
    [string] [Mandatory=$true] $domainName
    [string] [Mandatory=$true] $domainCred
)

Rename-Computer -NewName $compName -LocalCredential $localCred -PassThru
Add-Computer –DomainName $domainName -Credential $domainCred -Restart –Force
