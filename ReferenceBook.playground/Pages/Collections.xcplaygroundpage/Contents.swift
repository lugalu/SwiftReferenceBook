/*:
 # Collections
 Let's check this important types in Swift.
 
 &nbsp;
 ### What's a collection
 Well colections are simplest data structures, they are incredibly useful yet simpler than classes and structs and in Swift we have Three, so let's check them one by one.
 
 &nbsp;
 ### Arrays
 An array is one of the first data structures a programmer should learn, in essence they are ordered and contains only one type of data per array.
 
        var name: [Type] = [value1, value2, ...]
 
 \
 Yes they follow the property declaration, in this type of declaration, arrays can be declared in multiple ways so let's check them all out
 
         var name: [Type]
 
         var name: Array<Type> = Array()
 
         var name = [Type]()
 
         var name = [value1, value2, ...]
 
 \
 As you can see we have quite a lot of ways to declare one, stick to the one who talks with your heart and let's procced to adding.
 
 \
 When we want to add we can do some operations or use methods to add let's check it out:

 * Assigning just like a normal property we can assign a value to an array
 
        var numbers: [Int]
        numbers = [1, 2, 3]
 
 &nbsp;
 * Adding continuing the trend of assignments we can just add to our array
 
        numbers += [4,5,6]
        numbers += numbers

 &nbsp;
* Appending method is used to append, you can append arrays, values, etc.
 
        numbers.append(10)
        numbers.append(contentsOf: numbers2)
 
 
 Now let's move to indexing the array:
 
 * Common way is the same way you probably has accessed arrays in other languages
    
        numbers[index]
 
   with indexes we can acess manually all the iterations of an array, just take care to not go above the current array size.
 
 &nbsp;
 * Looping though it is an option but I'm not going to show it here because the declaration of a loop can confuse new programmers so read loops before trying.
 
 &nbsp;
* There are other ways to index through an array but they are not as straight forward as the conventional way, so I prefer to not talk about them yet.
   
 &nbsp;
 For last but not least let's check the removing operations, all of them are made with help of Type methods:
 
 * Removing by index deletes the position of the given value
    
        numbers.remove(at: 3)
 

 * Removing first/last removes the first or last element

        number.removeFirst()
        numbers.removeLast()
 

 * Remove all removes all elements of the array, no need to say use with caution
    
        numbers.removeAll()
 
 &nbsp;
 ### Dictionaries
 Dictionaries are a data structure composed by an unique key and a value, the declaration goes as follows
        
        var name: [Type: Type]
 
 \
 As you can see the declaration of dictionaries is pretty simple, when comes to the type the left one is the key and the right one is the value. the other possible declarations are
 
        var name: [Type: Type] = [:]
 
        var name = [Type: Type]()
 
        var name: Dictionary<String,String> = Dictionary()
 
 \
 Like the Arrays we have some ways to declare an dictionary, like last time use the one of you liking.
 
 \
 Adding is done by provinding a key and the value of the key if that key already exists the value is updated
 
        var numbersDict: [String: Int] = ["One": 1, "Two": 2]
        numbersDict["Three"] = 3
 
 \
  To update we can do the same thing as the adding or use the method
        
        numbersDict["Three"] = 6
        numbersDict.updateValue(5, forKey:"Three")
 
 \
 There are lots and lots of ways to remove from a dictionary, I'm going to cover only some of them
 
 * Remove value removes an entry based on the key
 
        numbersDict.removeValue(forKey: "One")
 

 * Removes all has a bool flag for capacity keeping
 
        numbersDict.removeAll(keepingCapacity: Bool)

 * And More!
 
 &nbsp;
 ### Sets
  Sets are unordered, unique values, unique type and your declaration is as follows
 
        var name: Set = [value, value, value, ...]
 
 Other possibilities to declare it are
        
        var name: Set<Type>()
        var name = Set([value, value, value])
 
 
 the way we insert in a Set is using the insert method, it tries to insert and returns the result of the operation that can be printed or stored in a variable.
 
        var networkPorts : Set = [25565,80,144]
        var result = networkPorts.insert(22)
        print(result)
 
 In this example the result would be ever positive but in a user interactive system the result could vary so prepare your system to if any insery fails retrieve that information or warn the user that's invalid.
 
 \
  When we want to compare values inside a set we should use the method contains, but the type inside of the set needs to conform to the hashable protocol
 
        print(networkPorts.contais(25565))
 
 \
 Another way to compare between sets is using the set theory from mathematic
 
 * Union: Union as the name sugests returns the sum of both sets
 
        networkPorts.Union(networkPorts2)
 
 
 * Subtract: as the name sugest subract one set from another
        
        networkPorts.subtracting(networkPorts2)
 
 * Intersection: returns the common value between the sets
    
        networkPorts.intersection(networkPorts2)
 
 * Symmetry: returns the symmetric difference from the two sets, that means it returns every item that wasn't contained in both sets
 
        networkPorts.symmetricDifference(networkPorts2)
 
 
 **Remember:** Since sets are unordered when you execute the same piece of code, the result can vary in order but shouldn't vary in content.
 
 &nbsp;
 ### Tuples
 Tuples are in the middle between dictionaries and structs, they are great for fast use and can be acessed in a number of ways lets see how to declare them:
 
	var tuple: (String, Int, String)
	var tuple2: (a: Int, b: String, c: CustomClass)

 Wow that's a lot lets break it down first them head to other ways, in the first variable we have a simple way of declaring them we dont have any name associated only the types nor any complex structure, the second way we add names for the tuple and more complex data structures and as you can see it's almost the same the initialiation is "easy" and very flexible so let's understand how to access the contents of a tuple.
 
	var tuple = ("A Text", 10, 10.5)
	var tuple2: (a: 10, b: "A", c: 90.90)
	var tuple3: (a: 10, b: "A", c: 90.90)
 
	print(tuple[0])
	print(tuple2.a)
 
	var d,e,f,g = tuple3
 
 So we can have 3 main ways of accessing a tuple, by index[0..N] like an array, with the variables inside of the tuple using .varName, and by decomposing the tuple into multiple variables. A tuple can hold any type of data even itself, tuple inside of tuple, and it's a good way to return multiple objects/values from one function with ease, also due to it's very fast to test or mock up a system or a solution quickly.
 
 &nbsp;
 ### What's Next
 * [Loops](Loops)
 * [Conditionals](Conditionals)
 * [Methods](Methods)
 * [Go back to Index](Index)
 */
