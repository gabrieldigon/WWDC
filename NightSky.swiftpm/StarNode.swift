//
//  StarNode.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 03/04/23.
//

import Foundation
import SpriteKit

class StarNode: SKNode {
    
    let light : SKLightNode
    let star : SKShapeNode
   
    override init() {
        
       
        self.light = SKLightNode()
        self.light.lightColor = UIColor.blue
        self.light.ambientColor = UIColor.blue
        self.light.shadowColor = UIColor.clear
        self.light.falloff = 1.0
        self.light.categoryBitMask = 1
        
        self.star = SKShapeNode(circleOfRadius: 5)
        self.star.fillColor = SKColor.clear
        self.star.strokeColor = SKColor.clear
        
        
        super.init()
            
        self.addChild(star)
        self.star.addChild(light)
    }
    

    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
