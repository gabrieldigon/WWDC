//
//  ConclusionGS2.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 19/04/23.
//

import Foundation
import SpriteKit

class StarsUp: SKScene {
    var touchLocation = CGPoint()
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let ground = SKSpriteNode(imageNamed: "otherGround")
    let label = SKLabelNode(fontNamed: "Marker Felt")
    let downlabel = SKLabelNode(fontNamed: "Marker Felt")
    let tapLabel = SKLabelNode(fontNamed: "Marker Felt")
    var count = 10
    override func didMove(to view: SKView) {
        
        if let physicsWorld = scene?.physicsWorld {
        
            physicsWorld.gravity.dy *= -1
        }
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        // adding background
        background.lightingBitMask = 1
        addChild(background)
        
        //label GoodLamp
        label.text = "The main secret is to cast light just when you need, where you need, with the right kind of light, that means not pointing light up, using timers and motions sensors also helps to vanquish light polution."
        label.fontSize = 50
        label.position = CGPoint(x: 0.5, y: 140)
        label.fontColor = SKColor.white
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 5
        label.preferredMaxLayoutWidth = 800
        label.zPosition = 1
        addChild(label)
        
        downlabel.text = "The stars are ours to admire and they remind us that we are part of something bigger, they remind us to LOOK UP."
        downlabel.fontSize = 50
        downlabel.position = CGPoint(x: 0.5, y: -200)
        downlabel.fontColor = SKColor.white
        downlabel.lineBreakMode = .byCharWrapping
        downlabel.numberOfLines = 3
        downlabel.preferredMaxLayoutWidth = 800
        downlabel.zPosition = 1
        addChild(downlabel)
        
        tapLabel.text = "Tap,Tap,Tap!"
        tapLabel.fontSize = 50
        tapLabel.position = CGPoint(x: -100, y: -500)
        tapLabel.fontColor = .white
        tapLabel.zRotation = .pi/33
        tapLabel.lineBreakMode = .byCharWrapping
        tapLabel.numberOfLines = 3
        tapLabel.preferredMaxLayoutWidth = 600
        addChild(tapLabel)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let star = StarNode()
        print(location)
        star.zPosition = 0
        star.position = location
        star.physicsBody?.collisionBitMask = 1
        star.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(star)
        count += 1
        if count == 20 {
            tapLabel.text = "The end!"
        }
        
    }
}
