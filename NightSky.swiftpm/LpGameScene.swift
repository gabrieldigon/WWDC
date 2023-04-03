//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LpGameScene: SKScene {
    var touchLocation = CGPoint()
    var light = SKLightNode()
    var lamp = SKShapeNode(circleOfRadius: 20)
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        light.lightColor = UIColor.yellow
        light.ambientColor = UIColor.gray
        light.shadowColor = UIColor.black
        light.falloff = 1.0
        light.categoryBitMask = 1
        lamp.fillColor = SKColor.yellow
        addChild(lamp)
        lamp.addChild(light)
        
        let box = SKSpriteNode(color: .white, size: CGSize(width: 50, height: 50))
//        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        box.lightingBitMask = 1
        box.shadowCastBitMask = 1
        addChild(box)
        
    }
    
    //    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    //        guard let touch = touches.first else { return }
    //        let location = touch.location(in: self)
    //        let box = SKSpriteNode(color: .white, size: CGSize(width: 50, height: 50))
    //        box.position = location
    //        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
    //        box.lightingBitMask = 1
    //        box.shadowCastBitMask = 1
    //        addChild(box)
    //
    //    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.position = location
        }
    }
}










