/*:
# Methods
### They are a crucial way to structure your code and there are quite some of them, so let's dive in.
 
 &nbsp;
### What's a method
In Swift methods are a important part of classes, structs, and enums they can be declared as the default, static, class or mutating. They work as functions and can be mostly accessed by the instances but there are some caviats for that.

 &nbsp;
### Default
The default methods, instance method, are accessed by the instances of a `class`, `struct`, and `enum`, and are the easier declaration structure of all variants:

    func name(parameter) -> return{
        code
     }

 \
A method can have multiple parameters and a return, can be tuples for multiple values, and in the code methods and function declarations are indistinguishable.



        class Person{
            //Variables and constants
            
            func methodExample(){
                //code
            }
          
        }

        struct Car{
            //Variables and constants
            
            func parametersExample(parameter value: Int){
                //Acessing a external value throught parameters/arguments
            }
        }

        enum Fruits{
            //Cases and states
            
            func returnExample() -> Int {
                return 1
            }
        }
        
        var car = Car()
        car.parametersExample() //this is how you access a instance method.
 
 
 \
In Swift the group of name, parameter and return represent the method/function signature and they are **very** important for **override** and **overcharge**
 
 \
 **The instance method is the base to declaring methods so memorize them.**
 
 &nbsp;
 ## Static
 They are created aby adding a static keyword before declaring the method.
 
    static func name(parameter)-> return{
        code
    }
 
 Static methods can only be accessed by the type who declared it, the type is the class, struct or enum itself, the utility of this kind of method is based on sensible pieces of your code that shouldn't be shown or need to be accessed a lot and instancing isn't an option or when you don't need the internal values to process some data related to that type.
 
 \
 let's say you have a Utils Struct and it contains a method to print a message to the user, this is very common and not need to instantiate the class every single time is great for the memory so a static class is perfect.
 
        class Utils{
        
            static func showMessage(_ message: String){
                //Code
            }
            
            static func validateTextInput(...){
                //Code
            }
            ...
        }
 
 \
When needed you could just access like the piece bellow:
 
        //Supposed main or any other file
        Utils.showMessage("Hello world!")
 
Cleaner code and less memory hog.
 
 Static modifiers are available to:
 * Enums
 * Class
 * Struct
 
 &nbsp;
 ### Class
 This modifier, like the name sugest, is for classes only and it works, for the most part, like a static modifier, the declaration structure is
 
        class func name(parameter)-> return{
            code
        }

 \
The class modifier allows the method to be only accessed by it's type, but different from the static it can be overridden by the subclasses, in this way the subClasses can modify the original code to conform better to it's need and at the same time can access the original code for ease functionality
 
        class Person{
            var name:String
            //...
 
            class func eat(){
                print("\(name) ate")
            }
        }

        class Customer: Person{ //For more info on this check classes.
            var food: [String]
            //...
 
            override class func eat(name: String){ //remember same signature
                print("\(name) ate \(food) and it was delicious")
            }
        }

\
Now let's say customer has another subclass but we don't want to allow it to change the behavior of the class function eat(), we can use a handy little trick called `final` so let's implement on the customer class.
 
         class Customer: Person{ //For more info on this check classes.
             var food: [String]
             //...

            final override class func eat(name: String){ //remember same signature
                 print("\(name) ate \(food) and it was delicious")
             }
         }
 
\
this way we prevent any new subclasses of `Customer` to change the behaviour of the methods/class functions.
 
 
 **Tip:** class and static methods can be called functions or type methods since they aren't on instances.
 **Warning:** You can't use self.propertie in class or static functions since they don't have a instance
    
 &nbsp;
 ### Static Vs. Class
 well they are similar but when should I use each one to keep it brief:
 Static:
 * Loading Default Config/Settings
 * Is not utilizing classes.
 * When subclasses shouldn't change the code
 
 Class:
 * When the subclass will need to change the content for better utilization
 * When utilizing classes, it becomes an option.
 
 &nbsp;
### Mutating
Structs and Enum are imutable data structures, that means we can't change the content inside of itself, but we have a way out of that the mutating keyword
 
    mutating func name(parameter)-> return{
        code
    }
 
The mutating keyword indicate to swift that the type can be altered by itself, and this makes structs and Enums far more flexible to use, because without this making list or stacks,for example, would be through outside functions, meaning non encapsuladed code and more messy code instead of beign nested.
            
    enum Person{
        case one(name: String)
 
 
        mutating func changeName(){
            self = .one(name: "Tim")
        }
    }
    
    var person = Person.one(name: "Luiz") //The associated value here is "Luiz"
    person.ChangeName() //The associated value changes to Tim
    
 
In an enum it may be hard to see the usage of this method but in a struct can be **valuable** since we can almost substitute entire class sytem with them.
 
 &nbsp;
 ### What's Next
 * [Classes](Classes)
 * [Structs](Structs)
 * [Go back to Index](Index)
 
 */
