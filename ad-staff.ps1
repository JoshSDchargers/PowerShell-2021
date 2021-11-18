Get-ADUser -SearchBase �OU=Staff,OU=Users,OU=astc,DC=astc,DC=local� -Filter * | Where-Object { ($_.DistinguishedName -notlike "*,OU=Sharedboxes,*") } | ForEach-Object {Add-ADGroupMember -Identity �Staff� -Members $_ }