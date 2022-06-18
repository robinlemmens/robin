'members vinden'
$members = $groepenid | ForEach-Object {Get-AzureADGroupMember -ObjectId $_}
'enkel de naam nemen'
$student = $members.Displayname
$namen=$student |ForEach-Object{$_ -replace ".........$"}


'members aanmaken in de correcte OU'
 $student|ForEach-Object {New-ADUser -Name $_ -DisplayName $_  -path "OU=users,OU=s131924,OU=OSscripting2022,DC=poliformarl,DC=local"}