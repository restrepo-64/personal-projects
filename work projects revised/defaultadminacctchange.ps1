#change default admin account to companyIT

#as secure string should hide password typed?
$pass1 = read-host -AsSecureString "What do you want new password to be?"

#finds admin, sets password, name and no expire
$useracct = Get-LocalUser -Name "Administrator"
$useracct | Set-LocalUser -AccountNeverExpires -Name "companyIT" -Password $pass1 -PasswordNeverExpires

#enables account
$useracct | Enable-LocalUser -Name "companyIT"

#confirm that it gets to end of script
write-host "it is done, ser"