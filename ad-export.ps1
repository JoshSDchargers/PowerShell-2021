$User = Read-Host "Enter Username to disable"
Disable-ADAccount -Identity $User
Get-ADUser -Identity $User -Properties whenCreated, Title, LastLogonDate | Out-File -Append M:\IT\Logs\users.txt
Get-ADPrincipalGroupMembership $User | select name  | Out-File -Append M:\IT\Logs\users.txt
"Disable date: $(Get-Date)" | Out-File -Append M:\IT\Logs\users.txt
"---------------------------------------------"|Out-File -Append M:\IT\Logs\users.txt
Start-Process "https://admin.microsoft.com/"