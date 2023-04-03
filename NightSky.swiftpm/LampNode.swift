
import Foundation
import SpriteKit

class LampNode: SKNode {
    
    let light : SKLightNode
    let lamp : SKShapeNode
    var category : UInt32
    init(category:UInt32) {
        
        self.category = category
        self.light = SKLightNode()
        self.light.lightColor = UIColor.yellow
        self.light.ambientColor = UIColor.gray
        self.light.shadowColor = UIColor.black
        self.light.falloff = 1.0
        self.light.categoryBitMask = category
        
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
