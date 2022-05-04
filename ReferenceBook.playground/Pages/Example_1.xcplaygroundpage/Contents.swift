import Cocoa                                                                                //using cocoa for the sleep function

//Constants
let maxLifes:Int = 10
let maxRooms = 10

//Variables
var life:Int = maxLifes
var option:Int = 0
var currentRoom =  0
var attacks = ["weak": 1,"normal": 2,"strong": 3]
var enemy = ["weak":1, "average": 3, "strong": 5]

var roomCheck = currentRoom

//Code
main();

/**
 main body, contains the main loop and would had the input for the exploration, if that worked in the playgrounds ;-;
 */
func main(){
    
    repeat{
        print("1- explore\n2- sleep\n3- exit \nChoose your option: ")                       //Just informing the player.
        option = Int.random(in: 1...2)                                                      //Random chance of exploring or sleeping
        print("\(option)\n\n")
        
        sleep(3)
        
        switch option{
        case 1:
            search()
        case 2:
           playerSleep()
        case 3:
            print("bye bye")
        default:
            print("It's dangerous to... wrong game! This is not supposed to happen tho...") //Something broke
        }
        
        sleep(3)
        
        for _ in 0...5 { print("") }                                                        // just empty space to ease the text reading
        
    }while(option != 3)                                                                     //checks for the status of the player, the option should only be 3 when the player dies or wins the game.
    
    print("game over")
    exit(1)
}

/**
 Contains the exploration options, is random by nature and don't need player input
 */
func search(){
    let typeOfEncounter = Int.random(in: 0...10)
    
    switch typeOfEncounter {
    case 0...7:
        enemyRoom()
    case 7...9:
        emptyRoom()
    case 10:
        healthRoom()
    default:
        print("I'm a bug!!")
        return;
    }
    
        currentRoom += 1;                                                                  //doesn't matter the result the current room increments.
        
    if (currentRoom == maxRooms && option != 3){                                           //Checks for the condition of the game the option is used since is the mechanism to leave the game.
        print("YOU WON, it's ur job tho")
        option = 3
    }
}


/**
 
 */
func playerSleep(){
    if (currentRoom - roomCheck) < 3 && life > maxLifes/2{                                  //prevents player spam to get free health.
        print("You aren't tired.")
        sleep(3)
        return
    }
    
    roomCheck = currentRoom                                                                 //used for the previous conditional.

    if (Bool.random() && Bool.random()) {                                                   //randoness to the health regen.
        print("the Sleep of your life. (+1 health)");
        sleep(3)
        addLife(value: 1)                                                                   //adds 1 of life since sleep doesn't require much.
        return
    }
    
    print("Meh nothing special but u are rested now.")
    sleep(3)
}



/**
 adds life to the player only if it is less than the max life.
 
 - parameter value: value is the amount to be added to the health.
 - returns: nothing
 
 */
func addLife(value: Int ){
    if ((life + value) < maxLifes) {
        life += value
        print("Sua vida agora é \(value)")
        sleep(3)
        return
    }
    print("Vocé está em plena saude! Não há como ser mais saudavel.")
    sleep(1)
}




/**
 the combat room fully random
 */
func enemyRoom(){
    let currentEnemy = (enemy.randomElement())                                              //Gets a random enemy from the dictionary
  
    guard var enemyLife = currentEnemy?.value else{                                         //checks to see if everything work, it should work but in last case it gives the player a small reward since it's the dev fault.
        print("something is wrong...free room")
        sleep(3)
        return
    }
    
    combatLoop : while(true){                                                       //the exit is made inside the while too
        print("Your enemy is \(currentEnemy?.key ?? "ERROR")" +
                "\nHis current health:\(enemyLife)" +
                "\nYour current life: \(life)\n\n")
        sleep(1)
        
        if Bool.random() {
            let currentAttack = (attacks.randomElement())
            
            print("You attacked with a \(currentAttack?.key ?? "ERROR") attack\n")
            enemyLife -= currentAttack?.value ?? 3
            
            if (enemyLife <= 0) {
                break combatLoop;
            }
            
        }else{
            print("You failed at attacking\n")
        }
        
        sleep(3)
        
        if Bool.random() {
            let currentAttack = (attacks.randomElement())
            
            print("The enemy attacked you with a \(currentAttack?.key ?? "ERROR") attack\n")
            life -= currentAttack?.value ?? 3
            
            if (life <= 0) {
                break combatLoop;
            }
            
        }else{
            print("The enemy failed at attacking\n")
        }
        
        sleep(3)
        print("\n\n\n\n")                                                                       //just spacing to help the readibility
    }
    
    if life<=0 {
        print("\n\n\nYOU DIED\n")
        option = 3
    }else{
        print("You defeated the enemy\n")
    }
    
    sleep(3)
    return
}

/**
 just a print if the player got lucky
 */
func emptyRoom(){
    print("empty room! free progress ˆˆ")
}

/**
 health room, fully replinish the player.
 */
func healthRoom(){
    print("you found a magic fountain it will try to heal you!(for free yay, free progress too)")
    life = maxLifes
}



