Get-ADGroup -Filter {whenChanged -ge $When} -Properties whenChanged

