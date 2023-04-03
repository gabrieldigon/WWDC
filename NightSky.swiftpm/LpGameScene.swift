//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LpGameScene: SKScene {
    var touchLocation = CGPoint()
    let lamp = LampNode(category: 1)
    override func didMove(to view: SKView) {
        addChild(lamp)
        let box = SKSpriteNode(color: .white, size: CGSize(width: 50, height: 50))
        box.lightingBitMask = 1
        box.shadowCastBitMask = 1
        addChild(box)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.position = location
        }
    }
}













 
