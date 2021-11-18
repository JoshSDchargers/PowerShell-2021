Get-ADUser -SearchBase ‘OU=Staff,OU=Users,OU=astc,DC=astc,DC=local’ -Filter * 

$Group = Staff
$Users = Get-ADGroupMember $Group | % {Get-ADUser $_.SamAccountName} | Where Enabled -EQ $false
Remove-ADGroupMember $Group -Members $Users