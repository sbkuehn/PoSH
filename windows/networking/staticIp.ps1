Param{
    [string] [Parameter(Mandatory = $true)] $staticIp,
    [string] [Parameter(Mandatory = $true)] $cidrClass,
    [string] [Parameter(Mandatory = $true)] $gateway,
    [string] [Parameter(Mandatory = $true)] $dns1,
    [string] [Parameter(Mandatory = $true)] $dns2
}

$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"
$wmi.EnableStatic($staticIp, $cidrClass)
$wmi.SetGateways($gateway, 1)
$dns = $dns1,$dns2
$wmi.SetDNSServerSearchOrder($dns)
