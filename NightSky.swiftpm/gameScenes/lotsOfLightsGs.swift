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
    
    let building1 = SKSpriteNode(imageNamed: "NewBulding2")
    let building2 = SKSpriteNode(imageNamed: "building1Rember")
    let building3 = SKSpriteNode(imageNamed: "building3rename")
    
    override func didMove(to view: SKView) {
        view.showsPhysics = true
        //fisica
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        // ading background
        background.lightingBitMask = 1
        addChild(background)
        //adding ground
        ground.position = CGPoint(x: 0.5, y: -350)
        ground.physicsBody = SKPhysicsBody(texture: ground.texture!, size: ground.texture!.size())
        ground.physicsBody?.affectedByGravity = false
        ground.physicsBody?.isDynamic = false
        ground.physicsBody?.categoryBitMask = 1
        addChild(ground)
        
        //adding buildings
        building1.position = CGPoint(x: 100, y: -240)
        building1.physicsBody = SKPhysicsBody(texture: building1.texture!, size: building1.texture!.size())
        building1.physicsBody?.affectedByGravity = false
        building1.physicsBody?.isDynamic = false
        building1.physicsBody?.categoryBitMask = 1
        addChild(building1)
        
        building2.position = CGPoint(x: -200, y: -230)
        building2.physicsBody = SKPhysicsBody(texture: building2.texture!, size: building2.texture!.size())
        building2.physicsBody?.affectedByGravity = false
        building2.physicsBody?.isDynamic = false
        building2.physicsBody?.categoryBitMask = 1
        addChild(building2)
        
        building3.position = CGPoint(x: 400, y: -130)
        building3.physicsBody = SKPhysicsBody(texture: building3.texture!, size: building3.texture!.size())
        building3.physicsBody?.affectedByGravity = false
        building3.physicsBody?.isDynamic = false
        building3.physicsBody?.categoryBitMask = 1
        addChild(building3)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(imageNamed: "lampDraw")
       
        box.position = location
        box.physicsBody?.collisionBitMask = 1
        box.physicsBody = SKPhysicsBody(texture: box.texture!, size: box.texture!.size())
        addChild(box)
        
    }
}


