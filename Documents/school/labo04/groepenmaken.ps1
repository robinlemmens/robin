$groepenAD = ($groepen).DisplayName
$groepenAD |ForEach-Object {New-ADGroup -Name $_ -GroupScope DomainLocal -Path "OU=groups,OU=s131924,OU=OSscripting2022,DC=poliformarl,DC=local" }