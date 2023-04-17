//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.

import SpriteKit

class LotsOfLights: SKScene {
    var touchLocation = CGPoint()
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let ground = SKSpriteNode(imageNamed: "otherGround")
    override func didMove(to view: SKView) {
        //fisica
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        // ading background
        background.lightingBitMask = 1
        addChild(background)
        //adding ground
        ground.position = CGPoint(x: 0.5, y: -400)
        addChild(ground)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(imageNamed: "lampDraw")
        box.position = location
        box.physicsBody = SKPhysicsBody(texture: box.texture!, size: box.texture!.size())
        addChild(box)
        
    }
}


