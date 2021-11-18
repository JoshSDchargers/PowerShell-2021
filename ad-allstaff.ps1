Get-ADUser -SearchBase ‘OU=’ -Filter * | Where-Object { ($_.DistinguishedName -notlike "*,OU=Sharedboxes,*") } | ForEach-Object {Add-ADGroupMember -Identity ‘All Staff’ -Members $_ }
