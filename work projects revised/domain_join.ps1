#join to domain

$user = read-host "Please enter username:"

add-computer -DomainName domain.local -Credential domain\$user -force



write-host "Joined to domain 'domain.local', restart when ready"