/*:
 # Enums
 Enums are really useful structures but in Swift they are much more powerful so let's check them out.
 
 &nbsp;
 ### What's an Enum
 Enums are data structures that define named values, this named values can be used to lower the amount of validation, increase the readability of the code and decreases the code rework
 
 &nbsp;
 ### Default
 The defaul enum is pretty simple and is declared as follows
 
        enum Name{
            case caseOne
            case caseTwo
            case caseThree
            case caseFour
        }
 
 As you can see is a simple declaration, and is more like other languages, but Enums in Swift Shine when we go to the new features.
 
 &nbsp;
 ### Raw Value
 Raw values are a common type for all the cases in an enum, you can give a raw value in the following way
  
        enum Name: Type{
            case caseOne
            ...
        }
 
 in this way all the values are automatticaly assigned but the programmer can define manually, the following example is going to explain a little more about assignments in enums
 
        enum Numbers: Int{
            case zero
            case one
            case two
        }
 
        enum Numbers2: Int{
            case zero = 10
            case one
        }
 
        enum Computers: String{
            case Desktop7840
            case Desktop8840 = "Tom computer"
        }
 
 So let's analyse one by one
 * the first example shows a automattic raw value it starts at 0 and goes on, if you print the value on screen the case one or two would print 1 and 2, this is very useful for the programmer since we don't need to assign everything by hand.
 
        var numbers = Numbers.two
        print(numbers)  //prints 2
 
 * The Second example works as the first but since we defined the first case as 10 the second one is eleven, the Swift compiler is intelligent enough to know we want to continue increasing the value.
 
        var numbers = Numbers2.one
        print(numbers)  //prints 11
 
 * The third example is using Strings, they work somewhat different, if we don't specify the value the variable name becomes the value Inside the String
 
        var computerOwner = Computers.Desktop-7840
        print(computerOwner) //Prints the String Desktop7840
 
 
 &nbsp;
 ### Associated Value
 Associated values are an evolution of raw values and they work case by case, the declaration goes as follows
 
        enum name{
            case caseOne(Type, Type)
            case caseTwo(Type)
        }
 
 As you can see the cases can have different sizers of tuples and you can even assign names to it so it makes more sense
 
     enum Name{
         case caseOne(name1: String, name2: Int)
         case caseTwo(Float)
     }
 
 when declaring a variable or constante the tuple value should be specified and if they have name you need to place the names before the value like a method or function
 
 to access the content simply use a switch case.
    
     enum Person{
          case Alive(name: String, age: Int)
         case Deceased(name: String, yearOfDeath: Int)
      }

     var person = Person.Alive(name: "Tom", age: 20)

     switch  person{
     case let .Alive(name, age):
         print("\(name) is \(age) years old")
     case .Deceased(_, let yearOfDeath):
         print("Died in year of \(yearOfDeath)")
     }
    
 
 well but if everytime I want to check I need a switch case it wouldn't make the code a mess, you may ask and you are correct that's where another functionally enters in place
 
 &nbsp;
 ### Associated Vs. Raw values
 You can be asking when I should use one of the other if they exclude themselfs, well prefer associated values but if you need you raw, like ever it depends on the use case of your code.
 
 &nbsp;
 ### Methods and computed properties
 Yes, Enums can support methods and computed properties to do operations, they work as a struct method and properties, but enums can't have stored properties, yet methods and computed are amazing tools to stop reworking the same piece of code.
 

 
 * [Initializers](initializers)
 * [Example 1](Example_1)
 * [Example 2](Example_2)
 * [Go back to Index](Index)
 
 */



/*
//"Normal enum"

enum SimpleEnum{
    case caseOne
    case caseTwo
    case caseThree
}

enum SimpleEnumSingleLine{
    case caseOne, caseTwo, caseThree                                    //works fine specially in default raws or not using associated.
}

let simpleEnumAssignment = SimpleEnum.caseThree

//Enum with associated value
enum AssociatedValueEnum{
    case caseOne(Int)
    case caseTwo(String)
    case caseThree(Float,SimpleEnum)
    case caseFour(Character,Bool)                                       //Works as tuples so can be any amount of parameters or types
}

let associatedEnumAssigment = AssociatedValueEnum.caseFour("a", true)   //how to retrive and assign

switch associatedEnumAssigment{                                         //To acess the content you need a switch case
case .caseFour(let a, var b):                                           //Individualy assigning constants or vars
    break
case let .caseThree(a, b):                                              //Assigning to all the values
    break
case var .caseOne(_):                                                   //Assigning but not using everything
    break
    default:
        break
}

//Enum with raw value
enum AutoRawValue: Int{                                                 //Starts with 0 and go scaling
    case caseOne
    case caseTwo
    case caseThree
    case caseFour
}

let autoRawAssignment = AutoRawValue.caseOne
print(autoRawAssignment.rawValue)                                       //prints 0

enum ManualRawValue: Int{                                               //Since I said the first one is 1 the others follow the first number
    case caseOne = 1
    case caseTwo
    case caseThree
    case caseFour
}

enum AutoRawValueString: String{                                        //If no name is assigned it assumes the var name as the string
    case caseOne = "Come to Brazil"
    case caseTwo
    case caseThree = "tow margaritas and a taco!"
}

var autoRawString = AutoRawValueString.caseOne
print(autoRawString.rawValue)                                           //prints "Come to Brazil"
autoRawString = AutoRawValueString.caseTwo
print(autoRawString.rawValue)                                           //prints "caseTwo" as string not as .caseTwo

print("\n")

//Case iterable Enum
enum IterableEnum: CaseIterable{                                        //this adds the ability to iterate though each case.
    case caseOne
    case caseTwo
    case caseThree
}

for _ in IterableEnum.allCases{
    //print(iterable)                                                     //Prints all the cases as the enum type
}


enum SuppresedIterableEnum: CaseIterable{                               //Here I'm supressing the default behavior and forcing a different
    case caseOne                                                        //alternative. To do that we have two main options:
    case caseTwo                                                        //Fist override allCases var
    case caseThree                                                      //Second using the anotation and overriding the default var
    
    static var allCases: [SuppresedIterableEnum]{                       //First option
        return [.caseOne,.caseTwo]
    }
    
}

for iterable in SuppresedIterableEnum.allCases{
    print(iterable)                                                     //prints only the case one and two
}


enum AnnotationIterableEnum: CaseIterable{                              //Second approach
    case caseOne
    case caseTwo
    case caseThree
    
    @available(*,unavailable)                                           //This stops the caseFour to be acessible but forces us to override
    case caseFour
    
    static var allCases: [AnnotationIterableEnum]{                      //If this is taken out the enum stops to conform to the protocol
        return [.caseOne,.caseTwo, .caseThree]
    }
    
}

for iterable in AnnotationIterableEnum.allCases {                       //Prints only the caseOne, caseTwo and caseThree
    print(iterable)
}
print("\n")

//Enums and properties
enum PropertieEnum{                                                     //Enums can have some types of properties
    static var defaultValue = 1                                         //it supports Static/Type properties
    
    case caseOne, caseTwo, caseThree
    
    var operations: PropertieEnum{                                      //it supports computed properties
        get{ return self }
        set{
            self = newValue
        }
    }
    
}

var propertieEnum = PropertieEnum.caseOne
print(propertieEnum)                                                    //Prints caseOne
propertieEnum = PropertieEnum.caseTwo
print(propertieEnum)                                                    //Prints caseTwo

print("\n")

//Enum initializers

enum InitEnums: Int{                                                    //Enum initializers only exist in Enum which have raw values.
    case caseOne = 1
    case caseTwo
}

//now if we try to initialize
var initEnum = InitEnums(rawValue: 3) ?? .none                          //The initializer returns an optional value so a nil coalescing or
print(initEnum as Any)//as any just to supress                          //prints nil since raw value 3 don't exist

var initEnum2: InitEnums
if let tmp = InitEnums(rawValue: 2){
    initEnum2 = tmp
    print(initEnum2)                                                    //prints caseTwo
}else{
    //handle your stuff here
}
*/





