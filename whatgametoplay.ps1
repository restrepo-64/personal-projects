Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$answer = Read-Host  "Do you want to play a game?"

switch ($answer)
{
    "yes" {
    
        $genre = Read-Host "Okay, what kind of game? Options are: cozy, strategy, action, other"

        switch($genre) {
            "cozy" {
                Write-Host "Some cozy games are Stardew Valley, Minecraft Creative Mode, School of Dragons"
            }
            "strategy" {
                Write-Host "Some strategy games are Pokemon(fan made and mainstream), Monster Hunter Stories 2, Digimon Cyber Sleuth"
            }
            "action" {
                Write-Host  "Some action games are Century: Age of Ashes, Skyrim, Smash Bros, Red Dead Online"
            }
            "other" {
                Write-Host "Some other games are L.A. Noire, The Sims 4, Undertale, AER Memories of Old"
            }
            default {
                Write-Host "That wasn't one of the options"
            }
        }
        
    }
    "no"  {write-host "bitch what"}
    default {write-host "i don't understand"}
}