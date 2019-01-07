[CmdletBinding()]
Param(
  [Parameter(Mandatory = $False)]
  [String]$Domain,

  [Parameter(Mandatory = $False)]
  [String]$Username,

  [Parameter(Mandatory = $False)]
  [String]$Password
)

$cred = New-Object System.Management.Automation.PsCredential("$Domain\\$Username", (ConvertTo-SecureString "$Password" -AsPlainText -Force))
Add-Computer -DomainName "$Domain" -Credential $cred
Restart-Computer
