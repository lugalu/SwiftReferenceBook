/*:
 # Variables and Constants
 In Swift we have lots of Data types and different kinds of properties so let's dive head in into this world!
 
 &nbsp;
 ### What's a Variable
 The common knowledge is that variables and constants are a way to store values, and that's totally correct but we can go further in Swift.
 
 &nbsp;
 ### Default variables
 Variables by the name are values that can change they are also know as stored properties, but let's call them variables for now, they can store many Data Types and their declaration is the following
 
        var name: Type = value
 
 well the default is quite different from other languages right? but let me tell a secret you don't need to actually specify a type unless you won't assign the value right away.
 
 &nbsp;
 ### Default Constants
 Constants as the name suggest are immutable values their declaration follows the variables but the keyword is a little different
 
        let name: Type = value
 
 as the variables you don't need to declare the type you can just tell the value and the compiler does the rest, one interesting thing of constants is that they don't need to have a value from the beginning but after you place a value inside you can't change it anymore.
 
 &nbsp;
 ### Variables Vs. Constants
 Well we talked about them but why this difference even exists to start with? It's quite simple constants are a lot more optimized than variables, because the value never changes the compiler can optimize according to the usage.
 
 &nbsp;
 ### Type Safe
 We keep seeing this type inference here and there but what's the correct name? It's Type Safe. Type safe is the ability to the compiler infers the value of a property, not only that type safe helps to indentify problems in earlier stages of development.
 
 &nbsp;
 ### Data Types
 Data types is another concept that you are going to hear quite a lot, in summary Data types are the types we use in declarations like String, Floats, Int, etc. Each Data Type uses a different way of formatting, storing and have different kinds of Type Methods. Their bit size changes accorgind to the necessity too for example a Float is 32-bits while a Double uses 64-bits, hence the double in the name.
 
 &nbsp;
 ### Primitive types
 Well we saw that Data types are the types of data we can use, inside this group we have other groups and one of them is the Primitive types, these as the name suggest are the base of programming and most of them are available by default in most high end languages thy consist on the following:
 
 \
 Numeric:
 * Int - Positive and negative Numbers without floating point
 * Float - Positive and negative Numbers with floating point. 32-bit
 * Double - Posite and negative numbers with floating point. 64-bits.
 
 \
 Text:
 * String - Sequence of Characters between quotes
 * Character - Is a single letter/number between quotes
 
 \
 Binary:
 * Boolean - Binary or is true or is false.
 
 The numeric Data has sub-genres like:
 * Int8
 * Int16
 * Float64
 * And more
 
 they are basically the same thing but with more or less bytes
 
 &nbsp;
 ### Non-primitives types
 Non-primitive data is all the data created by a programmer, we do this all the time specially in Object Oriented Programming(OOP), in Swift some of them are:
 * Classes
 * Structs
 * Enums
 * Arrays
 * Dictionaries
 * Sets
 * And more
 
 Now that we saw primitive and non-primitive I must tell you a secret, all of this is just theory and can be applied to a lot of languages but in Swift there's no distinction from primitives and non-primitives.
 
 &nbsp;
 ### What's Next
 * [Properties](Properties)
 * [Collections](Collections)
 * [Loops](Loops)
 * [Go back to Index](Index)
 */




