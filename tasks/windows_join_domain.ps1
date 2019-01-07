# Puppet Task Name: windows_domain_join

param ($domain)
param ($username)
param ($password)

$cred = New-Object System.Management.Automation.PsCredential("$domain\\$username", (ConvertTo-SecureString "$password" -AsPlainText -Force))
Add-Computer -DomainName "$domain" -Credential $cred
Restart-Computer
