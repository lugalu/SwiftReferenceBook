/*:
 # SpriteKit
 
 SpriteKit is a high performance framwork focused on creating 2D games utilizing Metal and OpenGL, that means we can animate and apply physics in our sprites.
 
 &nbsp;
 ## What are the available componentes?
 In SpriteKit most elements are Nodes, nodes are a super class to most elements like:
 * SKSpriteNode: Render images and solid colors;
 * SKShapeNode: Render geometric shapes
 * SKEmitterNode: Render particles and effects
 * SKLabelNode: Render Texts
 * SKLightNode: Renders light with the ability to calculate simple light bounces.
 * etc.
 
  Render: ability to drawn something on the screen via the GPU or variants.
 
 We also have elements that are not sub-classes of Nodes:
 * SKScene: A scene is our game layer is where everything happens in our game
 * SKView: The view is utilized to open one or more SKScenes during the gameplay
 * SKTexture: Is the textures utilized by our sprites.
 * etc
 
  Texture: image utilized in game elements.
 
 &nbsp;
 ## How to use Views and scenes
 First we need to declare our View in the basic ViewController that comes with any app, for swiftUI is a little different but let's stick to UIKit for simplicity
 
 
	class GameViewController: UIViewController{
	
		override func viewDidLoad(){
			super.viewDidLoad()
 
			let view = view as! SKView
		}
 
	}
 
 
 now we are going to create a simple game scene:
 
	class GameScene: SKScene{
	  // for Now will be empty
	}
 
 and instantiate in our view controller:
	
	class GameViewController{
		 override func viewDidLoad(){
			super.viewDidLoad()

			let view = view as! SKView
			let scene = GameScene(size: view.frame.size)
			
		 }
	}
 
 now we can display our scene and if needed configure certain debug aspects for our view
 
	 class GameViewController{
		override func viewDidLoad(){
			super.viewDidLoad()

			let view = view as! SKView
			let scene = GameScene(size: view.frame.size)
			 
			// Debug configs
			
			view.showsFPS = true
			view.showsNodeCount = true
			view.showsPhysics = true
 
			//Showing the scene
			view.presentScene(scene)
 
		}
	 }
 
 Now we should have a game scene displayed on the screen, let's understand a little bit more of this code.
 First we are casting our view to SKView so we can present a SKScene, then we create our scene followed by enabling debug status, showFPS shows the current frames per second of the game this is a status of game performance but is not the only one, showNodeCount shows the amount of nodes too many many nodes can cause slowdowns in our FPS, showPhysics shows the hitboxes of the games sprites, useful for creating them and debugging them.

 Then we use presentScene to display our fully configured scene on the screen, now to add interactive elements we can use the Scene.
 
 &nbsp;
 ##Utilizing the Scene
 
 ###Creating the player
 to fully use our scene we can create custom initializers and implement the old ones using the super class designated init:
 
	class GameScene: SKScene{
		var player: SKSpriteNode
	 
	 override init(size:CGSize){
		//Creating the player with a sprite
		player = SKSpriteNode(imageNamed: "PlayerSprite")
		super.init(size: size)
		
		//Configuring the player
		player.position = CGPoint(x:10,y:10)
		player.name = "PlayerNode"
 
		self.addChild(player)
	 }
	 
	 required init?(coder aDecoder: NSCoder) {
		 super.init(coder: aDecoder)
	 }
	}
 
 What are we doing here? first we are creating a generic SKSpriteNode with a custom image(can be whatever you want), then we proceed to customize it we change it's position relative to our scene, then we change the name, unlike multiplayer games this is the Node name and we can use it to navigate the touched nodes hierarchy.
 
 &nbsp;
 ### Moving the player
 To move our player we gonna utilize the custom actions available in SpriteKit, there's some already done, but we can also create custom code to be ran, the way they interact are quite simple and can be reutilized if u need
 
		class GameScene: SKScene{
			 var player: SKSpriteNode

			override init(size:CGSize){
			 //Creating the player with a sprite
			 player = SKSpriteNode(imageNamed: "PlayerSprite")
			 super.init(size: size)
			 
			 //Configuring the player
			 player.position = CGPoint(x:10,y:10)
			 player.name = "PlayerNode"

			 self.addChild(player)
			}

			required init?(coder aDecoder: NSCoder) {
			  super.init(coder: aDecoder)
			}
	 
			override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
				guard let touch = touches.first, touchLocation = touch.location(in:self) else{ return }
				
				if let node = self.nodes(at: touchLocation).first, node.name == "playerNode"{
					let rotate = SKAction.rotate(byAngle: 360, duration: 1)
	 
					player.run(rotate)
					return
				}
				
				let move = SKAction.move(to: touchLocation, duration: 1)
				player.run(move)
				
			}
		}
 
 In this example we do some more advanced stuff so let's break it down:
 First in the guard we are creating 3 variables the first is our first touch on the screen, the second is the position of that touch relative to the scene, and the third is get the node from the touched nodes list if there's any.
 
 Then we proceed to check if the touched node is the player node if it is we rotate the player node, if not we move the player node to the new position.
 
 
 */
