PSDrive | Where-Object { $_.Free -gt 50} | Select-Object Root,Used, Free,$env:computername | Add-Content hello444.txt
PSDrive | Where-Object { $_.Free -gt 50} | ForEach-Object {write-output "Free Space for" $env:computername "is" $_.free/1gb "GBs" }  | out-file test111.txt
