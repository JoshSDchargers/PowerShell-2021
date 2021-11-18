$NewUser = Read-Host -Prompt 'Enter New Users Username'
$Department = Read-Host -Prompt 'Enter New Users Department'
New-ADUser -Name "$NewUser" -UserPrincipalName "$newUser@astci.com" -Path "OU=#" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
<# New-ADUser -Name "$NewUser" -UserPrincipalName "$newUser@astci.com" -Path "OU=#" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true #>




