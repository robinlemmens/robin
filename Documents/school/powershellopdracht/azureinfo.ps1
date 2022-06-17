"eerst men eigen objectid vinden"
Get-AzureADUser -Filter "userPrincipalName eq 's131924@ap.be'"
'alle groepen vinden waar ik bij hoor'
$groepen =Get-AzureADUserMembership -ObjectId 01cefa5a-d723-4018-9fc0-68ee590f2847
'objectid van de groepen nemen voor members te vinden'
$groepenid = ($groepen).Objectid

