/*:
 # Properties
 We talked about Variables and constants but Properties is a lot more than that.
 
 &nbsp;
 ### Stored properties
 Stored properties are a continuation the variables and constants we talked about in the previous topic, they are the base for the following topics so make sure you read and understand those before checking this out. Now stored properties are somewhat an easy concept specially if you understood the previous one, they are variables and constants inside other data structures like classes and structs, well that's easy so let's go deeper.
 
 &nbsp;
 ### Lazy properties
 Lazy properties are a special kind of property, their initialization is different from the other properties, first let's see the declaration structure:
 
        lazy var name: Type = value
 
 It follows the default struct for properties with some caveats, first the value of initialization should be explicit but the type can still be omitted from the declaration, second lazy properties can't be constants. So why these restrictions exist to start with and what the property do? Well lay properties don't exist until they are called, so let's say you are doing a very complex system and you need to fast invert square root in 1 out of 10 cases, that's a low amount needed but the result must be stored in a variable, then lazy variables comes in since they are only initizaled on call they are perfect for complex maths or any code that has the potential to slow down your system.
 
        class MathHelper{
            //code
            var InvSqrtResult: Double = FastInverseSqrRoot(value: value)
            //code
        }
 
 
 let's think about this previous example, so we have a MathHelper class it's purpose is to help with complex calculations
 during it's initialization phase and it makes the hole system get slow, the cause you found is the fastInverseSqrRoot method, but you only use 1 time when you call it, does it really need to be on initialization? why not do it later when the system is more free of resources making the slowdown less frustating to the end user. That's the purpose of a lazy var.
 
 
 &nbsp;
 ### Computed Properties
 So computer properties, they are a total different world from what you saw until now, they don't actually store any data instead they store "methods", let's get to the declaration.
 
        var name: Type {
            //Code
        }
 
 So what's happening here is we have an almost normal declaration but instead of the assigment operator we have curly brackets, inside the curly brackets we can have some code and we can even specify a little bit more, check out.
 
        var name: Type{
            get{
                //Code
            }
            set{
                //Code
            }
        }
 
 Why should I use this? well to hide code or simplify the understanding of parts of your code, for example let's say we want to update the name of a person in a class but we don't have access to the particular value we need so we can have a computed property like the example bellow.
 
        struct Person{
            var name: String
            var nameCheck : String{
                get{
                    return self.name
                }
                set{
                    if !newValue.isEmpty && newValue != self.name{
                        self.name = newValue
                    }
                }
            }
  
        }
 
        var person = Person(name: "Martha")
        print(person.nameCheck)
        person.nameCheck = "Maria"
        print(person.nameCheck)
 
 here we used the same computed property to get the name and to set a new name in a way that we hid code from prying eyes and made our code more clean.
 
 &nbsp;
 ### Type properties
 So this are more easy than computed properties but still important, let's get to the declaration first.
 
        static var name: Type
 
 well as you can see the only difference from a stored property is the static keyword, basically now this property can only be accessed by the Class itself not an instance of it, and you can be thinking of it's usage, let's get an example.
 
        class CustomerOnline{
            static var qntOnline : Int = 0
 
            init(){
                //Code
                CustomerOnline.qntOnline += 1
            }
        }
    
 So in this example system everytime a user logs in it increases the counter and everytime it logs out it decreases it, the good thing of having this as a Type method is all the instances have the same value, there's no desync between the value stored in them, so you can use this reliably in you systems.
 
 &nbsp;
 ### What's Next
 * [Collections](Collections)
 * [Loops](Loops)
 * [Conditionals](Conditionals)
 * [Go back to Index](Index)
 */

