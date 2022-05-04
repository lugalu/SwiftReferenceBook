/*:
 # Conditionals
 Conditionals create a world of possibilities to the programmers, from simple validation to complex decision structures understanding them is a must.
 
 &nbsp;
 ### What's a Conditional
 Conditionals are ways to execute pieces of code when certain conditions are met, while they help the programmer too much conditionals can cause slow downs so really think before creating conditional chaining
 
 &nbsp;
 ### If statements
 They are the simplest conditional but are really useful, from simple value check to if chains, these infamous data structures are incredibly powerful, but very slow.
    
        if(condition){
 
        }
        
        if(condition){
 
        }else{
 
        }
 
        if(condition){
 
        }else if(condition){
 
        }
 
 
 there are the most useful if structures and they expand a lot, but again take caution in big if chains. Now let's see and example
 
        var valueA = 10
        var valueB = 12
 
        if( valueA < valueB){
            print("A is lesser than B")
        }else{
            print("B is lesser or equal to A")
        }
 
 Ok but that's a common thing in all languages, let's check what swift has as a unique aproach:
 
 * if let
 * Guard
 
 if let and guard are more than conditionals but they are far too advanced to place here, while they are incredible tools without the knowledge of Optionals, they become useless, so their explanation will later.
 
 &nbsp;
 ### Switch statements
 We talked about the if, but let's talk about the most different thing in conditionals, the switch!
 
        switch(){
            case caseOne:
                //Code
             case caseTwo:
                 //Code
             case caseThree:
                 //Code
            default
                //Code
        }
 
 so this looks like a normal switch case, you may ask you are right structually there's no difference the major things is we don't need breaks, there's no direct fallthrough, and every single case should have at least one line of code, these are the basics to get you started on switchs.
 
        var array = [1,2,3]
        
        switch array.randomElement(){
            case 1:
                print("one")
             case 2:
                 print("Two")
             case 3:
                 print("Three")
             default:
                print("ops")
        }
 
 
 Well in Swift switches can accept tuples, ranges, and the where clause.
 
 &nbsp;
 ### Where
 Where is like an Sql it adds more capabilites to analyse values
 
     var array = [1,2,3]
     
     switch array.randomElement(){
         case 1 where array[0] > array[1]:
             print("one B")
        case 1:
         print("one")
          case 2:
              print("Two")
          case 3:
              print("Three")
          default:
             print("ops")
     }
 
 in this case of duplicate cases the switch will choose the first valid since array[0] isn't bigger than array[1] it will execute the normal case.
 
 &nbsp;
 ###fallthrough
But You just said there's no fallthrough in swift, well I said it doesn't have a direct fallthrogh but we have a keyword that works like that
 
        switch condition{
            case one:
                fallthrough
            case two:
            \\code
            default:
            break
        }
 
 well fallthrough is a common thing in most languages but if you want to simplify code you can do this
        
     var array = [1,2,3]

     switch array.randomElement(){
          case 1,2:
              print("Two")
          case 3:
              print("Three")
          default:
             print("ops")
     }
 
 this is much concise and easy to understand, but sometimes we really need to fallthrough so filter your needs and choose what's best for your use case.
 
 &nbsp;
 ### What's Next
 * [Methods](Methods)
 * [Classes](Classes)
 * [Structs](Loops)
 * [Go back to Index](Index)
 */


