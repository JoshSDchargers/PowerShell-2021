$filter = 'Department -eq "Administration"'
Get-ADUser -Filter $filter | Add-ADPrincipalGroupMembership -MemberOf 'AllAdministration'
