$When = ((Get-Date).AddDays(-90)).DateGet-ADUser -Filter {whenCreated -ge $When} -Properties whenCreated

