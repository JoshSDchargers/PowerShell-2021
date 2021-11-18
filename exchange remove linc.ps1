Connect-MsolService -Credential $credential 
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $Credential -Authentication Basic -AllowRedirection
Import-PSSession $Session -CommandName Get-Mailbox,Get-MailboxPermission,Get-RecipientPermission -FormatTypeName * -AllowClobber | Out-Null

$Licenses = Read-Host "Would you like to remove the users Licenses(Y/N)"
$Forward = Read-Host "Would you like to forward the user's email?(Y/N)"
$Separate = Read-Host "Would you like to add a separation email?(Y/N)"



$upn = 'test5@astci.com'
(get-MsolUser -UserPrincipalName $upn).licenses.AccountSkuId |
foreach{
    Set-MsolUserLicense -UserPrincipalName $upn -RemoveLicenses $_
}


