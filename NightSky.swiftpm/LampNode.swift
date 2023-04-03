
import Foundation
import SpriteKit

class LampNode: SKNode {
    let form = SKSpriteNode(color: .white, size: CGSize(width: 20, height: 20))
    let light = SKLightNode()
   
    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
