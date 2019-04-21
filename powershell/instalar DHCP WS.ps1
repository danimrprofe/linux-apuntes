$DNSDomain=&quot;pearson.com&quot;
$DNSServerIP=&quot;172.16.1.10&quot;
$DHCPServerIP=&quot;172.16.1.10&quot;
$StartRange=&quot;172.16.1.150&quot;
$EndRange=&quot;172.16.1.200&quot;
$Subnet=&quot;255.255.255.0&quot;
$Router=&quot;172.16.1.1&quot;
Install-WindowsFeature -Name &#39;DHCP&#39; -IncludeManagementTools
cmd.exe /c &quot;netsh dhcp add securitygroups&quot;
Restart-service dhcpserver
Add-DhcpServerInDC -DnsName $Env:COMPUTERNAME
Set-ItemProperty -Path registry::HKEY_LOCAL_MACHINE\SOFTWARE Microsoft\ ServerManager\Roles\12 -Name ConfigurationState -Value 2
Add-DhcpServerV4Scope -Name &quot;DHCP Scope&quot; -StartRange $StartRange -EndRange $EndRange -SubnetMask $Subnet
Set-DhcpServerV4OptionValue -DnsDomain $DNSDomain -DnsServer $DNSServerIP -Router $Router
Set-DhcpServerv4Scope -ScopeId $DHCPServerIP -LeaseDuration 1.00:00:00
