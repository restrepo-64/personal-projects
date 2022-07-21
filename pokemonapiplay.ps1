#testing calling pokemon api
<#
$guess = read-host 'What pokemon do you want to know about?'

# original api https://pokeapi.co/api/v2
$webdata = Invoke-RestMethod -Uri 'https://pokeapi.co/api/v2/pokemon/{id or name}/'

# if ($answer -like $apithing.name) {

 #   $data = ConvertFrom-Json $apithing.content
# }


$results = $webdata.results

$result = $results | Where-Object { $_.name -match $guess }


#the $() makes it parse out the json babble
Write-Output "You chose $($result.name) ?"\


#>


$pokemonlist = Invoke-RestMethod -Uri 'https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0'


function grabMon {

         #$result = ConvertFrom-Json $webdata.results    to get more readable data that isn't json

        #$webdata | Get-Member   to grab what i can do with the data

        $randommon =  Get-Random -InputObject $pokemonlist.results.name
    
        checkit


}

 
function checkit {
    
    
    Write-Host $randommon

    $check = Get-Content -Path 'D:\Documents\Programming\powershell\pokemonlistused.txt' | Select-String -Pattern $randommon -SimpleMatch
    write-host  $check

        if ($check -ne $null) {

         Write-Host "$randommon is already in text file, pick again"
            grabMon
        }
        else {

          Write-Host "nah she not there"
            
          "`n$randommon" >> D:\Documents\Programming\powershell\pokemonlistused.txt



        }

        
}


#GOAL-- check text file; give random pokemon from list, output to text file; check same text file, if random pokemon is not in that text file, show me
# path D:\Documents\Programming\powershell\pokemonlistused.txt


# $randommon = 'meloetta-aria'  was using for testing check



#next steps in case you forget: we got the check to work, now we need to implement a loop to generate random pokemon, check the list, then if it's good, display and add to list
# you did it you sexy, capable human

grabMon