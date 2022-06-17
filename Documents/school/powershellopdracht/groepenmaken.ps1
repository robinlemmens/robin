'alle namen van de groepen nemen'
$groepenAD = ($groepen).DisplayName
'de groepen aanmaken in de correct OU'
$groepenAD |ForEach-Object {New-ADGroup -Name $_ -GroupScope DomainLocal -Path "OU=groups,OU=s131924,OU=OSscripting2022,DC=poliformarl,DC=local" }