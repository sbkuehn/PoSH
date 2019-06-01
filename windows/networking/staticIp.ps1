$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'"
$wmi.EnableStatic("192.168.1.134", "255.255.255.0")
$wmi.SetGateways("192.168.1.1", 1)
$dns = "192.168.1.202","192.168.1.200"
$wmi.SetDNSServerSearchOrder($dns)
