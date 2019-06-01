Param(
    [string] [Parameter(Mandatory = $true)] $staticIp,
    [string] [Parameter(Mandatory = $true)] $cidrClass,
    [string] [Parameter(Mandatory = $true)] $gateway,
    [string] [Parameter(Mandatory = $true)] $dns1,
    [string] [Parameter(Mandatory = $true)] $dns2
)

$nic = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"
$nic.EnableStatic($staticIp, $cidrClass)
$nic.SetGateways($gateway, 1)
$dns = $dns1,$dns2
$nic.SetDNSServerSearchOrder($dns)
