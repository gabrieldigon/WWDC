
import Foundation
import SpriteKit

class LampNode: SKNode {
    
    let light : SKLightNode
    var imageLamp : SKSpriteNode
   
    override init() {
        
       
        self.light = SKLightNode()
        self.light.lightColor = UIColor.white
        self.light.ambientColor = UIColor.white
        self.light.shadowColor = UIColor(named: "shadowColor")!
        self.light.falloff = 1.0
        self.light.categoryBitMask = 0
        
        self.imageLamp = .init(imageNamed: "lampDrawOff")
        self.imageLamp.texture?.filteringMode = .nearest
        super.init()
            
        self.addChild(light)
        self.light.addChild(imageLamp)
    
    }
    

    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
