
import Foundation
import SpriteKit

class LampNode: SKNode {
    
    let light : SKLightNode
    let lamp : SKShapeNode
   
    override init() {
        
       
        self.light = SKLightNode()
        self.light.lightColor = UIColor.white
        self.light.ambientColor = UIColor.gray
        self.light.shadowColor = UIColor.clear
        self.light.falloff = 0.8
        self.light.categoryBitMask = 0
        	
        self.lamp = SKShapeNode(circleOfRadius: 20)
        self.lamp.fillColor = SKColor.yellow
        
        super.init()
            
        self.addChild(lamp)
        self.lamp.addChild(light)
    }
    

    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
