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
    let star : SKSpriteNode
   
    override init() {
        
       
        self.light = SKLightNode()
        self.light.lightColor = UIColor.white
        self.light.ambientColor = UIColor.white
        self.light.shadowColor = UIColor.white
        self.light.falloff = 1.0
        self.light.categoryBitMask = 0
        
        self.star = .init(imageNamed: "myStar")
        self.star.size = CGSize(width: 200, height: 200)
      
        
        
        super.init()
            
        self.addChild(star)
        self.star.addChild(light)
    }
    

    
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
