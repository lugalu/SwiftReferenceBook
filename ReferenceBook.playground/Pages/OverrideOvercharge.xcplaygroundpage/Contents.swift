/*:
# Override and overcharge
 
 &nbsp;
 ## Override
 it's defined by the ability to rewrite a method from the super class, in other words we can modify a already existing method, so let's see how we do it:
	
	class OverrideExample{
		func helloWorld(){
			print("hello world!")
		}
	}
 
So this is our super class, currently it doesn't do much but is a good example for the time being, containing only the method we gonna override.
	
	class Overrider: OverrideExample{
		override func helloWorld(){
			print("Hello World 2!")
		}
	}
 
 So this is our overrider class it inherits from the super OverrideExample, and it's overwriting the method Hello world, to achieve this we need the first the keyword: override then the same method signature as the overwritten method.
 
	override <- keyword (func helloWorld()) <- Method/function signature {} <- Method/Function body
 
 The body of the method can change freely as long it respects the returns of the method signature, and you can be asking yourself why? why would I use this? The answer is quite simple, you can adapt the code to fit more concisely your sub-class, without losing the default implementation, but how do you use the default implementation you may ask and it's quite simple and if you probably already used it before!
 
	 class OverrideExample{
		
		init(){
			// lets initialize our hopes and dreams!
		}
 
		 func helloWorld(){
			 print("hello world!")
		 }
	 }
	
	class Overrider: OverrideExample{
	
	 override init(){
		super.init()
	 	//Initialize more hopes and dreams!
	 }
	
	 override func helloWorld(){
		super.helloWorld()
		print("Hello World 2!")
	 }
 }
 
 The super keyword allows you to continue using the default implementation even in overwritten methods, so the override is pretty powerful and somewhat simple in theory, so let's head to the next topic.
 
 &nbsp;
 ## Overcharge
 
 Overcharge is the ability to create multiple methods, or function, with the same name but different signature with it we can expect multiple data parameters to give more liberty when calling with different parameters.
 
	func helloWorld(){
		print("hello World!")
	}
 
	func hellowWorld(msg: String){
		print("Hello World with the following message from our sponsors: \(msg)")
	}
 
	func helloWorld(msg: String) -> Bool{
		var option:Bool = false
		//implement something...
		return option
	}
 
 So with this implementation we can call the function like this:
 
	helloWorld() \\ prints hello World
	hellowWorld(msg: "MUAHAHAHAHAHAHAHAHAH") \\ prints Hello World with the following message from our sponsors: MUAHAHAHAHA
 
 Overcharge is super simple and can be applied in basically any context, so feel free to use it in classes, structs, enums,etc.
 
 &nbsp;
 ### What's Next
 * [Go back to Index](Index)
 
 */
