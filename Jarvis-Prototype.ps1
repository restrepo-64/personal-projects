#Testing writing to files in powershell!

#do while loop to tell jarvis to go back to beginning if gets to end of statements?
#want an exit statement

#bruh... functions. functions are a thing
#main, sub menu, sub menu, end of each go back to menu


# Main Menu and other functions
function Menu {
  <#  param (
        OptionalParameters to pass to function
    ) #>

    $answer = Read-Host "Greetings, my liege. How can I serve you? Please keep in mind, I am very low on functionality right now"


    #change this below vvv to if else statement to avoid confusing jarvis

    if ($answer -like '*exit*') {

        write-host "`nUntil next time, my liege."

       exit
    }
         elseif ($answer -like '*color*')  {

                favoritecolor
         }

         elseif ($answer -like '*pokemon*')  {
             
                pokemonfact

         }

         elseif ($answer -like '*game*') {
                whatgame
         }

        else {

            write-host "Some options include a random pokemon fact, what game to play, what is my favorite color, or exit by saying exit"

            replay #goes back to menu
        }
}

#can call menu when within menu essentially
function replay {
    Menu
}

#now: calls random pokemon from list; to be developed, calls random poke from api list, then lists random data from other columns/areas of api...
function pokemonfact {

    $pokemonlist = 'Eevee', 'Raichu', 'Squirtle', 'Kirby'

    $poke = Get-Random -InputObject $pokemonlist

    Write-Host " $poke  is a pokemon, facts to be developed" `n
   

    Menu
}

#now: calls random color from man-made list of colors; future dev. uses api for multiple colors, not too specific, but maybe can guess based on number of colors
function favoritecolor {
  $colors = 'blue', 'red', 'green', 'purple', 'yellow', 'orange'
  
  $rand = Get-Random -InputObject $colors

  $answercolor = read-host "Is it  $rand ?"

  switch ($answercolor) {
      'yes' {
          write-host "Excellent, good programming I guess" `n
      }
      'no' {
          write-host "Terribly sorry, ser, blame my operator" `n
      }
      default {
          write-host "Why play this game with me ser..." `n
      }
  }

  Menu

}

function favoritepoke {

     # use API https://pokeapi.co/api/v2/pokemon
     write-host "I'm working on it"
}


function whatgame {

    $answer = Read-Host  "Do you want to play a game? Y or N"

    switch ($answer)
    {
        'y' {
        
            $genre = Read-Host 'Okay, what kind of game? Options are: cozy, strategy, action, other'
    
                 switch($genre) {
                         'cozy' {
                              Write-Host "Some cozy games are Stardew Valley, Minecraft Creative Mode, School of Dragons`n"
                              Menu
                     }
                         'strategy' {
                             Write-Host "Some strategy games are Pokemon(fan made and mainstream), Monster Hunter Stories 2, Digimon Cyber Sleuth`n"
                             Menu
                     }
                            'action' {
                             Write-Host  "Some action games are Century: Age of Ashes, Skyrim, Smash Bros, Red Dead Online`n"
                             Menu
                     }
                         'other' {
                             Write-Host "Some other games are L.A. Noire, The Sims 4, Undertale, AER Memories of Old`n"
                             Menu
                     }
                         default {
                    Write-Host "That wasn't one of the options"
                    Menu
                     }
                 }
            
        }
        'n'  {

                 write-host "If you say so"

                 Menu
        }
     default {
         
        write-host "I don't understand"

        Menu

        } 

        
    }

}



# MAIN VVV

Menu

