/*:
 # Delegates
 
 Delegates are part of a design pattern called delegation, they are used to give away a responsability to another class and that's a little confusing from the start but relax at the end of this you should be able to create at least a basic delegate.
 
For this pattern protocol are essential so do not forget to read about them, so how to do it? we start of creating a protocol with all the methods and properties we need access to:
 
	 protocol UpdateDelegate{
		func updateScreen()
		func updateSound()
	 }
 
 after creating it we now need 2 classes one that conforms:
 
	 class Main: UpdateDelegate{
	
		init(){
			//...
			var interactiveSource = InteractiveCode(updater:self,//...)
		}
		
		func updateScreen(){
			//Do Stuff
		}
	 
		 func updateSound(){
			 //Do more stuff
		 }
	 }
 
Then we need another class that has a reference to a UpdateDelegate:
 
	class InteractiveCode{
		var updater: UpdateDelegate?
	 
		init(updater:UpdateDelegate,//More stuff){
			self.updater = updater
			//More stuff
		}
	 
		func touchesbegan(){
			//More stuff
			updater?.updateScreen()
		}
 }
	
 As you can see the updater is an optional, and it needs to be like that so we dont have circle referencing, preferably it can be weak too, now every time we call a method from the updater, when it does this he doesnt know if it is currently attached or if there ever was a point of access, we use like this to also prevent crashes if the reference is lost by some reason.
 
 We can use the updater to lessen the work of our viewController, or an already big class, and can reutilize everywhere when it's possible so less class and less of a mess.
 
 
 &nbsp;
 ### What's Next
 * Nothing for now...
 */
