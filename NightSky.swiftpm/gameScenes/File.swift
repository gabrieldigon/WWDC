//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class ola: SKScene {
    
    var touchLocation = CGPoint()
    var lamp = LampNode()
    let drawCircle = circleNode()
    let background = SKSpriteNode(imageNamed: "backgroundDegrade")
    let badEye = SKSpriteNode(imageNamed: "ground")
    let badEye2 = SKSpriteNode(imageNamed: "ground")
    let badEye3 = SKSpriteNode(imageNamed: "ground")
    let badEye4 = SKSpriteNode(imageNamed: "ground")
    let box = StarNode()

    override func didMove(to view: SKView) {
        
        background.lightingBitMask = 1
        background.size = .init(width: 1100, height: 1200)
        addChild(background)
        
        box.position = CGPoint(x: 0.5, y: 300)
        
        addChild(box)
        
        // adding bad eye
        badEye.position = CGPoint(x: -100, y: 0.5)
        badEye.shadowCastBitMask = 1
        badEye.zRotation = .pi/2
        addChild(badEye)
        
        badEye2.position = CGPoint(x: 100, y: 0.5)
        badEye2.shadowCastBitMask = 1
        badEye2.zRotation = .pi/2
        addChild(badEye2)
        
        badEye3.position = CGPoint(x: 0.5, y: 100)
        badEye3.shadowCastBitMask = 1
        
        addChild(badEye3)
        
        badEye4.position = CGPoint(x: 0.5, y: -100)
        badEye4.shadowCastBitMask = 1
       
        addChild(badEye4)
        
        lamp.position = CGPoint(x: 100, y: 0.5)
        lamp.light.shadowColor = .white
        addChild(lamp)
      
        // circulo do meio
      
        drawCircle.position = CGPoint(x: 0.5, y: 0.5)
        drawCircle.DrawCircle.shadowCastBitMask = 1
        addChild(drawCircle)
        
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.position = location
            if lamp.position.x > -60 && lamp.position.x < 60 && lamp.position.y > -60 && lamp.position.y < 60 {
                lamp.light.categoryBitMask = 1
                lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
            }
            else
            {
                lamp.light.categoryBitMask = 0
            }
        }
    }
}


