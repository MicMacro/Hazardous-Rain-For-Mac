import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    var hdn:Double = 50
    
    var pla = true
    
    var score = 0
    
    var alk = true
    
    var ali:Int = 0
    
    var kl:String?
    
    var sps = [SKNode()]
    
    var curr:SKShapeNode?
    
    var sb:SKLabelNode?
    
    /*private var lastUpdateTime : TimeInterval = 0
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?*/
    
    override func sceneDidLoad() {
        /*self.lastUpdateTime = 0
        
        // Get label node from scene and store it for use later
        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }*/
        
        self.backgroundColor = .black
        
        let w = (self.size.width + self.size.height) * 0.10
        self.curr = SKShapeNode.init(ellipseOf: CGSize(width: w, height: w))
        
        self.sb = SKLabelNode.init(text: String(score))
        self.sb?.color = .white
        self.sb?.fontSize = CGFloat(integerLiteral: 30)
        self.sb?.fontName = "AvenirNext-Bold"
        self.sb?.position = CGPoint(x: (self.size.width/2)-20, y:(self.size.height/2) - 30)
        self.addChild(self.sb!)
        
        genb()
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        /*if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }*/
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        /*if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }*/
    }
    
    func touchUp(atPoint pos : CGPoint) {
        /*if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }*/
    }
    
    override func mouseDown(with event: NSEvent) {
        self.touchDown(atPoint: event.location(in: self))
    }
    
    override func mouseDragged(with event: NSEvent) {
        self.touchMoved(toPoint: event.location(in: self))
    }
    
    override func mouseUp(with event: NSEvent) {
        self.touchUp(atPoint: event.location(in: self))
    }
    
    override func keyDown(with event: NSEvent) {
        switch event.keyCode {
        case 0x31: break
            /*if(self.alk == true){
                if(self.pla == true){
                    sps[1].removeFromParent()
                    sps[2].removeFromParent()
                    sps.removeLast()
                    sps.removeLast()
                    self.hdn = self.hdn * 1.3
                    self.score = self.score + 1
                    genb()
                }
            }
            self.alk = false
            self.ali = 0*/
        case 0x3: // F
            if(self.alk == true){
                if(self.pla == true){
                    if(self.kl == "F"){
                        sps[1].removeFromParent()
                        sps[2].removeFromParent()
                        sps.removeLast()
                        sps.removeLast()
                        self.hdn = self.hdn * 1.3
                        self.score = self.score + 1
                        genb()
                    }
                }
            }
            self.alk = false
            self.ali = 0
        case 0x5: // G
            if(self.alk == true){
                if(self.pla == true){
                    if(self.kl == "G"){
                        sps[1].removeFromParent()
                        sps[2].removeFromParent()
                        sps.removeLast()
                        sps.removeLast()
                        self.hdn = self.hdn * 1.3
                        self.score = self.score + 1
                        genb()
                    }
                }
            }
            self.alk = false
            self.ali = 0
        case 0x4: // H
            if(self.alk == true){
                if(self.pla == true){
                    if(self.kl == "H"){
                        sps[1].removeFromParent()
                        sps[2].removeFromParent()
                        sps.removeLast()
                        sps.removeLast()
                        self.hdn = self.hdn * 1.3
                        self.score = self.score + 1
                        genb()
                    }
                }
            }
            self.alk = false
            self.ali = 0
        default: break
            
        }
    }
    
    func ulo(){
        sps[1].removeFromParent()
        sps[2].removeFromParent()
        sps.removeLast()
        sps.removeLast()
        
        pla = false
        
        let los = SKLabelNode.init(text: "Press Command+N to Start New Game")
        los.color = .white
        los.fontSize = CGFloat(integerLiteral: 30)
        los.fontName = "AvenirNext-Bold"
        los.position = CGPoint(x: 0, y: 0)
        self.addChild(los)
    }
    
    func randx() -> Int{
        let w = (self.size.width + self.size.height) * 0.10
        return Int.random(in: Int(-(self.size.width/2) + w) ... Int((self.size.width/2) - w))
    }
    
    func ran() -> String{
        let num = Int.random(in: 0 ... 2)
        var fgh = ["F","G","H"]
        return fgh[num]
    }
    
    func genb(){
        if let n = self.curr?.copy() as! SKShapeNode? {
            let w = (self.size.width + self.size.height) * 0.10
            let ox = randx()
            let kt = ran()
            
            n.fillColor = .red
            n.strokeColor = .red
            //n.position = CGPoint(x: 0, y: 290 + w)
            n.position = CGPoint(x: ox, y: Int(290 + w))
            self.addChild(n)
            
            let txt = SKLabelNode(text: kt)
            txt.color = .white
            txt.fontSize = CGFloat(integerLiteral: 30)
            txt.fontName = "AvenirNext-Bold"
            //txt.position = CGPoint(x: 0, y: 290 + w - 7)
            txt.position = CGPoint(x: ox, y: Int(290 + w - 7))
            self.addChild(txt)
            
            sps.append(n)
            sps.append(txt)
            self.kl = kt
            
            n.run(SKAction.wait(forDuration: 0.5))
            txt.run(SKAction.wait(forDuration: 0.5))
            
            n.run(SKAction.repeatForever(SKAction.move(by: CGVector(dx: 0, dy: -(hdn)), duration: 1)))
            txt.run(SKAction.repeatForever(SKAction.move(by: CGVector(dx: 0, dy: -(hdn)), duration: 1)))
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        /*// Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        // Update entities
        for entity in self.entities {
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
         */
        
        self.sb?.text = String(score)
        if sps.count > 1 {
            if(sps[1].position.y < -(self.size.height/2)){
                ulo()
            }
        }
        
        if(self.ali > 25){
            self.alk = true
        }
        
        self.ali = self.ali + 1
    }
}
