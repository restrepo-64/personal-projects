#run as admin logged in to companyit
#grabs serial number and saves as variable
#changed domain names
$serial = (Get-WmiObject win32_bios).Serialnumber

#writing variable for testing
write-host "This is the serial, write it down if you wish: `n $serial "

#change computer name to serial, force supresses user confirmation prompt, does not affect admin prompt... 
#need to run as admin for script to change name or else access denied
#when running as companyit admin or after already joined, will throw error and not change name because it wants a domain admin to enter creds, not local

Rename-Computer -NewName $serial -Force

#set time zone to CST
Set-TimeZone -Id "Central Standard Time" 

<# confirmed serialnumber and time change worked, keep checking after script to confirm since
there aren't any error catching in script yet #>
 <#>
$user = read-host "Please enter username:"

add-computer -DomainName domain.local -Credential domain\$user -force



write-host "it is done, homie , restart when ready"

#>

#end of script



