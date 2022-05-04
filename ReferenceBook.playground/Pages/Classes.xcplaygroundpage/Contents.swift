/*:
 # Classes
 ### Classes are a famous data structure across most OOP languages so let's know a bit more in Swift
 
 &nbsp;
 ### What's a Class
 Classes are reference-type data structures, that means they copy the same instance or address across all copies and one modification changes all of them. Classes work on instances and they can hold many types of properties, methods, functions, initializers, and more.
 
 &nbsp;
 ### Default
 In Swift we have some declarations of classes but far less than other languages, I'm looking at you Java, but to understand the others you need to first know how to declare a basic class.
 
        class ClassName{
 
        }

 \
 As you can see declaring a basic class is easy and very straightforward, all subsquent properties, methods, etc. should be between the curly brackets. Simple classes are great for simple programs and small data structures but when the scope grows and the complexity rises we need some different, flexible and reliable way of creating classes.
 
 &nbsp;
 ### Instancing
 But after we check how to make better classes we need to check how to create their instance, and is pretty simple because is just like a normal propertie
 
        var name: ClassName = ClassName()
 
 \
 See that's simple! and since we can pass arguments we can make many different classes for different purposes, and remember you can declare it static or constant like any good Swift variable, with some caveats:
 Constants still let, pun intended, you change the content of the Class but it don't permit a instance change, that means we can alter the content inside the class but not the class itself
 
        // Our variable now is a constant
        let name: ClassName = ClassName()
        name.age = 10 // This is valid
        name = ClassName() // This isn't valid since we would be changing the name var to a new instance
 
 \
 now that we reviewed this step let's continue to the fun part.
 
 &nbsp;
 ### Inheritance
 Inheritance is the hability of sub-classes to extend the capabilites of their super-class, they are declared in the following way
 
        class ClassName: SuperClass{
            
        }
 
 When a class inherits another it gains the capabilities of it's super-class, that means all the methods, properties, initializers, etc, are given to the sub-class and it has the ability to create new or expand, override, the the already given capabilities
 
 * Methods
 the inheritance of methods is simple all the methods are inherited to the subclass and can be acessed the same way you do with the super class, so by instance or type
            
        class Person{
        // Code
        
            func helloWorld(){
                print("Hello World! I'm just an example ˆˆ")
            }
        
            static func hello(){
                print("Hi")
            }
 
        }
 
        class Child: Person{
            //Code
        }
        
        var child = Child()
        child.helloWorld()  //this works fine
        
 &nbsp;
 * Properties
 Properties and computed properties are inherited by default and can be accessed utilizing the same ways as it super class, the acess level is inherited too so subclasses can't acess private unless is inside of the class scope.
 
			 class Person{
			 var name: String = "Alex"
			 //Code
				
			 }

			 class Child: Person{
				 //Code
			 }
			 
			 var child = Child()
			 child.name = "Tom" // this works fine
 
 &nbsp;
 * Final keyword
 In classes the final keyword has an important job , it stops subclasses from changing already implemented methods/functions, but you can think and about the static keyword, the thing is some times we want a subclass to change the behavior of the method but not the subclass of that subclass, then the final keyword enters the game
 
        override final func hello(){
            //Code
        }
 
This is really useful in cases we want to guarantee no other changes will be made to the content of a method.
 
        class Father{
            func hello(){
                print("Hello World! I'm Dad!")
            }
        }
        
        class Daughter: Father{
            override final func hello(){
                super.hello()
                print("DAD! stop ip ugh...")
            }
        }
 
        class Child : daughter{
            
        }
 
 so think like this the father passed his genes to the daughter but the daughter don't like the dad jokes! then she reacts, badly, after he makes one, the child ,which inherited genes from it's mother, can't speak yet, so he can't react to the joke at least not speaking, hence the fact he can't override the behaviour.
 
 &nbsp;
 ### Relationships
 Class relationships are similar but they have some differences that are important.
 
 
 &nbsp;
 ### Composition
 Composition of classes is when a classe depends on another to be alive.
 
        class WiFi{
            //code
        }
 
        class GenericSystem{
            var WiFiModule: WiFi
            //code
        }
 
 in the example the WiFi class only exist while a GenericSystemClass exists, this is a class composition.
 
 &nbsp;
 ### Association
 Association of classes is when a class has a reference to another, but the referenced class don't need the class referencing it to exist
 
        class CPU{
            //Code
        }
 
        class GenericSystem{
            var cpu: CPU
            var arrayOfCPUs: [CPU]
        }
    
        let cpu = CPU()
        var genericSys = GenericSystem(cpu)
        var genericSys2 = GenericSystem(cpu)
        ...
 
 In this example the CPU class exists without the help of GenericSystem class, but GenericSystem still has a 1:1 and a 1:N realtion stablished by it's properties, at the same time cpu has a N:1 relation since it can distribute itself to various devices.
 
 &nbsp;
 ### Abstract Classes & Multiple Iheritance
 Well in Swift "Abstract Classes and Multiple Inheritance don't exist", at least not using classes by itself check protocol ;)
 
 &nbsp;
 ### What's Next
 * [Structs](Structs)
 * [Override and Overcharge](OverrideOvercharge)
 * [Protocols](Protocols)
 * [Initializers](Initializers)
 * [Go back to Index](Index)
 
 */
 
 
//Simple Class
class simpleClass{
    var varOne: Int                                                     //These are stored properties of a class.
    var varTwo: String = "Hello World"
    var varThree: Float {                                               //This is a computer properties of a class.
        return -273.15
    }
    
    init(varOne:Int) {                                                  //A simple initializer, in this case it only needs one parameter
        self.varOne = varOne                                            //because the other are initizalized with a default value.
    }
    
    init(varOne: Int, varTwo: String){                                  //overcharge of initilization.
        self.varOne = varOne
        self.varTwo = varTwo
    }
    
    func updateVarOne(varOne: Int){                                     //Showing how to include parameters in a method.
        self.varOne = varOne
    }
    
    func simpleFunc() -> Int {                                          //this is just a simple method can be acessed by everyInstance in
        print("This is a simple method that returns 10")                //every scenario and it shows how to return value.
        return 10
    }
    
    private func simplePrivateFunc(varOne: Int) {                       //Private functions/methods can be only accessed by the class
        print("this is a private func")                                 //that created and the subclasses.
    }
    
}

//Convenience Initizalizers
class convenienceExample{
    var varOne:Int
    var varTwo:String
    var varThree: String{
        return "Hello"
    }
    
    init(varOne: Int, varTwo: String) {
        self.varOne = varOne
        self.varTwo = varTwo
    }
    
    convenience init(randomVar: Double,varTwo: String){                 //Convenience initializer are used to add more calculations or
        let value = randomVar / 2 * 3 * 4 / 20                          //simply expand the default initialization.
        self.init(varOne: Int(value), varTwo: varTwo)
    }
    
}

//Static vs class Func
class Static{
    
    static func hello(){                                                //Can't be overided or accessed by variables.
        print("static hello world")
    }
    
    class func helloWorld(){                                            //Can be overided but not Accessed by variables.
        print("class func hello world")
    }
    
    final class func helloWorld2(){                                     //Can't be overwritten nor accessed by varaibles.
        print("final version :/")                                       //The dev can specify the final in a subclass too.
    }
    
    private func thisIsAMethod(){                                       //Different from the others above this is a method the others are
                                                                        //Class functions, is more important to understand the behavior.
    }
                    
}

class subStatic:Static{
    override class func helloWorld() {
        print("hello world from subclass")
        super.helloWorld()
    }
}

Static.hello()                                                          //How to call the static func
subStatic.helloWorld()                                                  //overrides the class func
subStatic.helloWorld2()                                                 //Don't override but calls like that.

//Inheritance
class InheritanceExample{
    var varOne: Int
    var varTwo: String
    var varThree: Double
    
    init(varOne: Int, varTwo: String,nickname varThree: Double) {
        self.varOne = varOne
        self.varTwo = varTwo
        self.varThree = varThree
    }
}

class Inherited: InheritanceExample{                                    //We can access all the content of this and of the super
    var varFour:Float
    
    init(varFour: Float) {                                              //Normal init
        self.varFour = varFour
        super.init(varOne: 10, varTwo: "a", nickname: 10.2)             //calls the designated init from the super.
    }
}


//Type properties and classes

class TypeProperties{
    var varOne: Int                                                     //Normal access by instance,method,etc.
    static var boilingPoint: Int = 100                                  //can only be accessed by TypeProperties.boilingPoint
    
    init(varOne: Int) {
        self.varOne = varOne
    }
}


//Lazy properties in classes
class lazyProperty{
    lazy var lazyVar = heavyMethod()                                    //This is only initialized when the lazyVar is needed.
    var varOne: Float
    var varTwo: Double
    
    init(varOne:Float, varTwo:Double) {
        self.varOne = varOne
        self.varTwo = varTwo
    }
    
    private func heavyMethod()-> Double{
        //Imagine a really heavy shader/phisics calculations here
        return 100.0
    }
}

//Class association

class Association{                                                      //Association of classes happens when one class has a reference inside of it to the other
    var associatedClass : Associated                                    // 1:1 association
    var multipleAssiciated: [Associated]                                //1:N association
                                                                        //N:1 would be multiple associations with the same associated.
    
    init(associatedClass: Associated){
        self.associatedClass = associatedClass
        self.multipleAssiciated = [associatedClass]
        
    }
}

class Associated{
    //Code goes here
}

//Class composition(?)
class Composition{                                                      //In composite relationships the subclass only exist if the super class exists, and if the super is
                                                                        //Deleted the subclass is too.
    var compositedRelation: SubClass
    
    init() {
        self.compositedRelation = SubClass()
    }
    
    static func hellow(){
        print("a")
    }
}

class SubClass{
    
}

//Abstract Classes
//Check protocols ˆˆ





