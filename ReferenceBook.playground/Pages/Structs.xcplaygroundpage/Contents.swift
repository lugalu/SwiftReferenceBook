/*:
 
 # Structs
 ### Structs are Famous data structures in C-like languages and they do exist in Swift and are quite powerful, so let's check them out
 
 &nbsp;
 ### What's a Struct
 Structs are value-type data structures, that means they are independent of one another each and every copy is becomes unique in the moment a value is changed. Structs work on instances and can hold many types of properties, methods, functions, initializers and more.
 
 &nbsp;
 ### Default
 The default struct declaration is simple and straightforward, it's a like C but a little more easy, but as aways you need to understand the basic before going foward
 
 struct StructName {
 
 }
 
 all the properties, methods and initializers goes inside the brackets like a class. The default structs are great for simple softwares but they are really powerful tools when you get into know the hole package so let's get started with instancing!
 
 &nbsp;
 ### Instancing
 To instance a struct is equal to instancing a class so is easy to go back and forth from classes and structs.
 
        var name: StructName = StructName()
 
 well a small difference that you can't see is the init of a struct, it works exactly like a class init, check Initializers for inits, but structs have a special initilization type it's called **memberwise initializer!**.
 
 &nbsp;
 ### Memberwise Initializer
 The memberwise initializer is a easy and very good initializer, because it's free and you don't even need to even create it. Let's get to an example

        struct Person{
            var name: String
            var age : Int
        }
 
        var person: Person = Person(name: "Tommy", age: 25)
 
 As you can see I didn't declare the init yet it stills exist and can be used, the way it works is simple, it declares a default init with every single property declared, one thing if you declare any kind of initializer inside of the struct you lose acess to the memberwise and should do it by hand.
 
 &nbsp;
 ### Inheritance
 Well structs don't have inheritance, the substitute for that are protocols, and is a more advanced project so finish reading this and if you feel confidence enough go dive deep into that rabbit hole.
 
 &nbsp;
 ### What's Next
 * [Structs](Structs)
 * [Protocols](Protocols)
 * [Initializers](Initializers)
 * [Go back to Index](Index)
 
 */

//Simple struct and memberwise
struct SimpleStruct{
    var varOne: Int                                                     //Stored Properties
    var varTwo: String
    
    //I don't need a initializer here due to memberwise "auto" init
}

let simpleStruct = SimpleStruct(varOne: 10, varTwo: "Hello there")      //Swift offers a free init for structs if the dev doesn't create one

//Methods & custom init
struct MethodsStruct{
    var varOne: Int
    var varTwo: String
    
    init(varTwo: String) {                                              //Custom initizalization like classes but we don't have all the tools of classes like
        self.varOne = Int.random(in: 1...10)                            //the convenience init.
        self.varTwo = varTwo
    }
    
    func simpleMethod(varOne: Int)-> Int{
        if varOne < 1 {
            return 1
        }
        return varOne * self.simpleMethod(varOne: (varOne-1))
    } 
}

let instance = MethodsStruct(varTwo: "a")
let result = instance.simpleMethod(varOne: instance.varOne)
print(result)

