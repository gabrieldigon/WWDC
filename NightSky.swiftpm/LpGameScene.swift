//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LpGameScene: SKScene {
    var touchLocation = CGPoint()
    let lamp = LampNode()
    let star1 = StarNode()
    override func didMove(to view: SKView) {
        star1.position = CGPoint(x: 0.5, y: 100)
       
        addChild(star1)
        addChild(lamp)
        
        let box = SKSpriteNode(color: .white, size: CGSize(width: 50, height: 50))
        box.position = CGPoint(x: 300, y: -170)
        box.lightingBitMask = 1
        box.shadowCastBitMask = 1
        addChild(box)
       
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.light.categoryBitMask = 1
            lamp.position = location
        }
    }
}













 