'members vinden'
$members = $groepenid | ForEach-Object {Get-AzureADGroupMember -ObjectId $_}
'enkel de namen'
$namen = $members.Displayname
'members aanmaken in de correcte OU'
 $namen|ForEach-Object {New-ADUser -Name $_ -DisplayName $_  -path "OU=users,OU=s131924,OU=OSscripting2022,DC=poliformarl,DC=local"}
