/*:
 ### Initializers
 We talked about classes, structs and enums and all of them can have initializers in their declaration so let's understand a little more
 
 &nbsp;
 ### What's a initializer
 Initializer like the name suggest initializes something, they initialize the complex data structures and have various different ones, they are called constructors in some other languages so let's see what's different
 
 &nbsp;
 ### Default init
 The default init or designated init are the simplest initializers , they are the main initializer of your class and can be made in structs and enums too.
 
        init(variable1: Type, variable2: Type, ...){
            //Code
        }
 
 The structure itself is easy, the content inside too, the thing is inits can support overcharge and override, they go to subclasses and we have a some other types so let's cover them

 &nbsp;
 ### Convenience init
 As the name suggest is just for convenience and it helps the programmer in some situation where he has a valid value but needs more treatment than the original init
 
        convenience init(variable1: Type, ...){
            //Code
            self.init(...)
        }
 
 Every convenience needs to call the designated initializer.
 
 &nbsp;
 ### Required init
 The required init forces the subclasses to implement it, the subclasses canforce other subclasses to implement it or they can just stop the cycle.
 
        required init(...){
            //Code
        }
 
 These types of init are great for making subclasses conform to certain aspects of your code.
 
 
 &nbsp;
 ### Failable
 Failable initializers like the name suggest can fail, since they can fail they are optionals
 
        init?(...){
        //Code
        }
 
 Since they can fail and are optionals you can return nil values different from other inits that you can't return at all, remember you are going to check if it sucessfully created an object and unwrap it to be able to use it to the max.
 
 &nbsp;
 ### Enums and inits
 Well as we could see enums have values inside of them, because of that we have tow initializers for free! When we use the raw value we won the ability to use an failable init to search for the raw value.
 
        enum Computers: String{
            case Desktop1
        }
    
        var computer = Computers(rawValue: "Desktop1") ?? .none
 
 When we use the Raw value init we have the option to use the .none as a default nil if it fails to find it inside of the enum.
 
 &nbsp;
 ### Classes and inits
 Classes are the data structures more dependant on the initializer since we have to do it manually, so understandinf each and every init is a must to fully extract everything a class can offer.
 
 
 
 * [Example 1](Example_!)
 * [Example 2](Example_2)
 * [Go back to Index](Index)
 */



/*
import Foundation

struct Memberwise{
    let width :Int
    let height:Int
    let depth:Int
}

let memberwiseTest = Memberwise(width:10, height:10,depth: 5)
print(memberwiseTest.depth)


//Failable Initializers

struct Failable{
    let a:Int
    let b:Int
    let c = 1
    
    init?(){                                                                    //Returns as optionals
        
        if let aT = Int("42") {
            self.a = aT
        }else{
            return nil
        }
      
        
        if let bT = Int("two thousant") {
            self.b = bT
        }else{
            return nil
        }
        
        
    }
    
}

let failable = Failable()
print(failable?.a as Any)                                                       //Prints nil bc b failed.
print(failable?.b as Any)                                                       //Prints nil bc b failed.
print(failable?.c as Any)                                                       //Prints nil bc b failed.


//Required Initializer
class RequiredFather{                                                           //Super Class
    let name:String
    
    required init(name:String){
        self.name = name
    }
}

class RequiredSub : RequiredFather{
    let age:Int
    
    init(name:String,age:Int) {
        self.age = age
        super.init(name: name)
    }
    
    required init(name: String) {
        self.age = RequiredSub.returnAge()
        super.init(name: name)
        
    }
    
    static func returnAge()-> Int{
      return 10
    }
}
let testRequired = RequiredSub(name: "alo",age: 12)
print(testRequired.age)


//Convenience
class NextNumber{
    var actualNumber: Int
    var nextNumber: Int{
        self.actualNumber+1
    }
    
    init(actualNumber: Int) {
        self.actualNumber = actualNumber
    }
    
    convenience init(nextNumber: Int) {
        self.init(actualNumber: nextNumber - 1)
    }
}

let num1 = NextNumber(actualNumber: 1)
let num2 = NextNumber(nextNumber: 2)

print(num1.actualNumber)
print(num2.actualNumber)
*/


