Get-ADUser -SearchBase ‘OU=#’ -Filter * 

$Group = Staff
$Users = Get-ADGroupMember $Group | % {Get-ADUser $_.SamAccountName} | Where Enabled -EQ $false
Remove-ADGroupMember $Group -Members $Users
