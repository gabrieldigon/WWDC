//
//  circleNode.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 05/04/23.
//

import Foundation
import SpriteKit

class circleNode : SKNode{
    let DrawCircle : SKSpriteNode
    
    override init() {
        self.DrawCircle = .init(imageNamed: "CircleDrawA")
        super.init()
        self.addChild(DrawCircle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
