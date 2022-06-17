'credentials aanmaken'
$sleutel = Get-Credential
'verbinden met azure AD van de AP'
connect-AzureAD -Credential $sleutel