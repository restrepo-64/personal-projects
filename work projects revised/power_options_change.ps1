$answer = Read-Host 'X TO CHANGE, D TO DEFAULT'
switch ($answer)
{
    'x'
    {
        <# Action to perform if the condition is true
        change to company never standards
        #>

        #screen turns off never
        powercfg /x monitor-timeout-ac 0

        #standby timeout never
        powercfg /x standby-timeout-ac 0

        #hibernate timeout never
        powercfg /x hibernate-timeout-ac 0

        # Break out of the switch statement
        break;
    }
    'd'
    {
        <# Action to perform if the condition is true
        default power options
        powercfg -restoredefaultschemes     <doesnt work for some reason
        #>
        #screen turns off never
        powercfg /x monitor-timeout-ac 20

        #standby timeout never
        powercfg /x standby-timeout-ac 35

        #hibernate timeout never
        powercfg /x hibernate-timeout-ac 45

        # Break out of the switch statement
        break;
    }
    default
    {
        # Converted this to an error instead of `Write-Host`
        Write-Error "That wasn't a choice, ya silly, you entered $answer"
        
        # Break out of the switch statement
        break;
    }
}