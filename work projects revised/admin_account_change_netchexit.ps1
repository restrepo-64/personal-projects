#change default admin account to whatever

#as secure string should hide password typed?
$pass1 = read-host -AsSecureString  "what do you want new password to be?"
$pass2 = read-host -AsSecureString  "one more time for clarity"

if ($pass1 -ceq $pass2) {

#finds admin, sets password, name and no expire
$useracct = Get-LocalUser -Name "Administrator"
$useracct | Rename-LocalUser -NewName "companyIT"
Set-LocalUser -Name "companyIT" -AccountNeverExpires -Password $pass1 -PasswordNeverExpires $true
#maybe split these commands up?
    

#enables account
Enable-LocalUser -Name "companyIT"

#confirm that it gets to end of script
write-host "success"

}

else {
    Write-Error "passwords don't match, you goon, try again"
}

# power options changing to never go to sleep, etc
#