//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LightExpandGs: SKScene {
    
    var touchLocation = CGPoint()
    let lamp = LampNode()
    let star1 = StarNode()
    override func didMove(to view: SKView) {
        //adicionando a luz
        star1.position = CGPoint(x: 0.5, y: 900)
        addChild(star1)
        
      //criando cenario
        
        let downWall = SKSpriteNode(color: .white, size: CGSize(width: 900, height: 25))
        downWall.position = CGPoint(x: 0.5, y: -250)
        downWall.lightingBitMask = 1
       
        addChild(downWall)
        
        let upwall = SKSpriteNode(color: .white, size: CGSize(width: 900, height: 25))
        upwall.position = CGPoint(x: 0.5, y: 250)
        upwall.lightingBitMask = 1
       
        addChild(upwall)
        
        let rightwall = SKSpriteNode(color: .white, size: CGSize(width: 25, height: 520))
        rightwall.position = CGPoint(x: 440, y: 0.5)
        rightwall.lightingBitMask = 1
       
        addChild(rightwall)
        
        let leftwall = SKSpriteNode(color: .white, size: CGSize(width: 25, height: 520))
        leftwall.position = CGPoint(x: -440, y: 0.5)
        leftwall.lightingBitMask = 1
        
        addChild(leftwall)
        
        
        
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            addChild(lamp)
            lamp.position = location
        }
    }
}













 
