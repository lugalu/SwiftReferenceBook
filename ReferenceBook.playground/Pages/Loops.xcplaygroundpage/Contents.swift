/*:
 # Loops
 Looping structures like For loops are very common in most languages, let's check them in Swift
 
 &nbsp;
 ### What's a Loop
 Loops are structures to repeat the same code block until certain conditions are met, they are vey useful for iteration, user input and input validation in consoles command applications.
 
 &nbsp;
 ### For-in loop
 For-in loops is the default for loops in other languages, it's declared as follows
 
        for index in condition{
 
        }
 
 Let's understand this, the first is the for keyword indicatin the loop structure, the second is the product of the condition beign applied let's say we are iterating from 0 to 10 everytime the value of the iteration increases the index changes it's pretty common to see the index as i, the in keyword is saying the next thing is the range of the iteration, condition is the range itself can be an array, a range, a class, a struct, etc.
 
 \
 Ranges
 
 
 To use the for loop with ranges we do it like this
 
     for i in (0...10) {
         print(i)
     }
 
 well but if you don't need the index? just place a _
 
     for _ in (0...10) {
         print(index)
     }
 
 ranges are great for fixed amounts of even iterating through normal arrays when we get the size but there are better ways
 
 
 \
 Array
 
 
 When iterating through arrays we can just declare them in the condition place
 
     var array = ["A","B","C"]
     for index in array {
         print(index)
     }
 
 arrays have multiple ways to be interacted with so this is just another way
 
 \
 Strides
 
 
 Strides are ways to jump in the loop, they give the loop a different way of iteration
 
        for index in stride(from: 0, through: 10, by: 3){
            print(index)
        }
 
 &nbsp;
 ### ForEach
 For each is a method avaliable for collections
 
        var array = [1,2,3]
        array.forEach(){ index in
            //Code
        }
        var dict = ["key1":10,"key2":11]
         set.forEach(){index in
              print(index)
         }

        var set:Set = ["Alo", "ByeBye"]
        set.forEach(){index in
             print(index)
        }
 even in for each we have a index but declared after the curly brackets.
 
 &nbsp;
 ### For-in Vs. Foreach
 The biggest difference is that forEach isn't affected by break or continue and returns don't affect the entire loop only the current iteration
 
 &nbsp;
 ### While
 While loops execute until the condition isn't met anymore, they check at the start of the execution
 
        while(condition){
            //Code
        }
 
 whiles can run indefinetly we if use the boolean True state since they suffer from the effects of breaks and continues thy are perfect to make continous running system for console commands or embedded systems.
 
 &nbsp;
 ### Repeat-while
 Repeat while is the do-while of other languages, that means the code condition is analyzed at the end of the execution and the first run happens every time
 
        repeat{
            //Code
        }while(condition)
 
 Repeat whiles are affected by breaks and continues.
 
 
 &nbsp;
 ### What's Next
 * [Conditionals](Conditionals)
 * [Methods](Methods)
 * [Classes](Classes)
 * [Go back to Index](Index)
 */
