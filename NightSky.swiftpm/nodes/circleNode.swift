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
        self.DrawCircle = .init(imageNamed: "NewCircleDraw")
        super.init()
        self.DrawCircle.size = .init(width: 800, height: 800)
        self.addChild(DrawCircle)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
