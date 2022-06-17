'members vinden'
$members = $groepenid | ForEach-Object {Get-AzureADGroupMember -ObjectId $_}

'members aanmaken in de correcte OU'
 $members|ForEach-Object {New-ADUser -Name $_ -DisplayName $_  -path "OU=users,OU=s131924,OU=OSscripting2022,DC=poliformarl,DC=local"}