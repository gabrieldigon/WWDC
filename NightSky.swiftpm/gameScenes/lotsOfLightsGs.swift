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
    
    var Star1 = StarNode()
    var Star2 = StarNode()
    var Star3 = StarNode()
    var Star4 = StarNode()
    var Star5 = StarNode()
    var Star6 = StarNode()
    var Star7 = StarNode()
    var Star8 = StarNode()
    var Star9 = StarNode()
    var Star10 = StarNode()
    let citylight1 = SKLightNode()
    let citylight2 = SKLightNode()
    
    let pointer = SKSpriteNode(imageNamed: "alternativepointer")
    
    let tapLabel = SKLabelNode(fontNamed: "Marker Felt")
    let resultLabel = SKLabelNode(fontNamed: "Marker Felt")
    var buildings = SKSpriteNode(imageNamed: "CityOff")
    var count = 0
    
    override func didMove(to view: SKView) {
        
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        // adding background
        background.lightingBitMask = 1
        addChild(background)
        //adding stars
        buildings.size = CGSize(width: 1400, height: 1400)
        buildings.position = CGPoint(x: 0.5, y: -210)
        addChild(buildings)
        Star1.position = CGPoint(x: -105, y: 302)
        Star2.position = CGPoint(x: 71, y: 302)
        Star3.position = CGPoint(x: 260, y: 449)
        Star4.position = CGPoint(x: -260, y: 449)
        Star5.position = CGPoint(x: -440, y: 453)
        Star6.position = CGPoint(x: 440, y: 453)
        Star7.position = CGPoint(x: -324, y: 327)
        Star8.position = CGPoint(x: 324, y: 327)
        Star9.position = CGPoint(x: -96, y: 437)
        Star9.light.categoryBitMask = 1
        Star10.position = CGPoint(x: 79, y: 437)
        Star10.light.categoryBitMask = 1
        addChild(Star1)
        addChild(Star2)
        addChild(Star3)
        addChild(Star4)
        addChild(Star5)
        addChild(Star6)
        addChild(Star7)
        addChild(Star8)
        addChild(Star9)
        addChild(Star10)
        //adding ground
        ground.position = CGPoint(x: 0.5, y: -350)
        ground.physicsBody = SKPhysicsBody(texture: ground.texture!, size: ground.texture!.size())
        ground.physicsBody?.affectedByGravity = false
        ground.physicsBody?.isDynamic = false
        ground.physicsBody?.categoryBitMask = 1
        addChild(ground)
        
        //adding city lights
        citylight1.lightColor = .white
        citylight1.ambientColor = .white
        citylight1.categoryBitMask = 1
        citylight1.isHidden = true
        addChild(citylight1)
        
        citylight2.lightColor = .white
        citylight2.ambientColor = .white
        citylight2.categoryBitMask = 0
        citylight2.isHidden = true
        addChild(citylight2)
        
        //adding tap label
        
        tapLabel.text = "Tap,Tap,Tap!"
        tapLabel.fontSize = 50
        tapLabel.position = CGPoint(x: 0.5, y: 150)
        tapLabel.fontColor = .white
        tapLabel.zRotation = .pi/33
        tapLabel.lineBreakMode = .byCharWrapping
        tapLabel.numberOfLines = 3
        tapLabel.preferredMaxLayoutWidth = 600
        addChild(tapLabel)
        
        //adding result label
        resultLabel.text = "Lots of light together outshine the distant starLight."
        resultLabel.fontSize = 50
        resultLabel.position = CGPoint(x: 0.5, y: 390)
        resultLabel.fontColor = .white
        resultLabel.lineBreakMode = .byCharWrapping
        resultLabel.numberOfLines = 3
        resultLabel.isHidden = true
        resultLabel.preferredMaxLayoutWidth = 900
        addChild(resultLabel)
        
        pointer.size = CGSize(width: 500, height: 500)
        pointer.position = CGPoint(x: 0.5, y: -375)
        pointer.zRotation = .pi/55
        pointer.isHidden = true
        addChild(pointer)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let lamp = SKSpriteNode(imageNamed: "lampDraw")
        print(location)
        count += 1
        if count == 10 {
            buildings.texture = SKTexture(imageNamed: "CItyOn")
            Star1.isHidden = true
            Star2.isHidden = true
            Star3.isHidden = true
            Star4.isHidden = true
            Star5.isHidden = true
            Star6.isHidden = true
            Star7.isHidden = true
            Star8.isHidden = true
            Star9.isHidden = true
            Star10.isHidden = true
            citylight1.isHidden = false
            citylight2.isHidden = false
            tapLabel.isHidden = true
            resultLabel.isHidden = false
            pointer.isHidden = false
        }
        lamp.position = location
        lamp.physicsBody?.collisionBitMask = 1
        lamp.size = CGSize(width: 300, height: 300)
        lamp.physicsBody = SKPhysicsBody(texture: lamp.texture!, size: lamp.texture!.size())
        addChild(lamp)
        
    }
}


