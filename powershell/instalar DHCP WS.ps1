$DNSDomain="pearson.com"
$DNSServerlP="172.16.1.10"
$DHCPServerlP=,,172.16.1.10"
$StartRange=“172.16.1.150"
$EndRange="172.16.1.200"
$Subnet="255.255.255.0"
$Router="172.16.1.1"
Install-WindowsFeature -Name 'DHCP' -IndudeManagementTools cmd.exe /c "netsh dhcp add securitygroups"
Restart-service dhcpserver
Add-DhcpServerlnDC -DnsName $Env:COMPUTERNAME
Set-ltemProperty -Path registry::HKEY_LOCAL_MACHINE\SOFTWARE Microsoft ServerManager\Roles\12 -Name ConfigurationState -Value 2 
Add-DhcpServerV4Scope -Name "DHCP Scope" -StartRange SStartRange -EndRange $EndRange -SubnetMask $Subnet 
Set DhcpServerV40ptionValue -DnsDomain $DNSDomaln -DnsServer $DNSServerlP -Router SRouter 
Set-DhcpServerv4Scope -Scopeld $DHCPServerlP -LeaseDuration 1.00:00:00
