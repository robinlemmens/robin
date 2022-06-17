"eerst men eigen objectid vinden"
Get-AzureADUser -Filter "userPrincipalName eq 's131924@ap.be'"
'alle groepen vinden waar ik bij hoor'
$groepen =Get-AzureADUserMembership -ObjectId 01cefa5a-d723-4018-9fc0-68ee590f2847
$groepenid = ($groepen).Objectid
'members vinden'
$members = $groepenid | ForEach-Object {Get-AzureADGroupMember -ObjectId $_}

'members aanmaken'
 $members|ForEach-Object {New-ADUser -Name $_ -DisplayName $_  -path "OU=users,OU=s131924,OU=OSscripting2022,DC=poliformarl,DC=local"}