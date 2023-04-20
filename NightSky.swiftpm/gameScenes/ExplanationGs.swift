//
//  ExplanationGs.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 19/04/23.
//

import Foundation
import SpriteKit

class ExplanationGs: SKScene {
    var touchLocation = CGPoint()
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let ground = SKSpriteNode(imageNamed: "otherGround")
    let label = SKLabelNode(fontNamed: "Marker Felt")
    let tapLabel = SKLabelNode(fontNamed: "Marker Felt")
    
    private var currentNode: SKNode?
    
    let blueLamp = LampNode()
    let yellowLamp = LampNode()
    let purpleLamp = LampNode()
    let orangeLamp = LampNode()
    let redLamp = LampNode()
    
    override func didMove(to view: SKView) {
        
        if let physicsWorld = scene?.physicsWorld {
            
            physicsWorld.gravity.dy *= -1
        }
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        // adding background
        background.lightingBitMask = 1
        addChild(background)
        
        //label GoodLamp
        label.text = "The stars are far away and the light that gets to us is weak so LOTS of artificial lights together POINTED UP  with the WRONG TYPE of light  make the city  the worst place to see the stars, we call that LIGHT POLUTION."
        label.fontSize = 50
        label.position = CGPoint(x: 0.5, y: 0.5)
        label.fontColor = SKColor.white
        label.lineBreakMode = .byCharWrapping
        label.numberOfLines = 5
        label.preferredMaxLayoutWidth = 800
        label.zPosition = 1
        addChild(label)
        
        tapLabel.text = "So…how can we solve it?"
        tapLabel.fontSize = 50
        tapLabel.position = CGPoint(x: -100, y: -500)
        tapLabel.fontColor = .white
        tapLabel.lineBreakMode = .byCharWrapping
        tapLabel.numberOfLines = 3
        tapLabel.preferredMaxLayoutWidth = 600
        addChild(tapLabel)
        
        //adding lamps
        
        blueLamp.imageLamp.texture = SKTexture(imageNamed: "blueLabel")
        blueLamp.position = CGPoint(x: -6, y: -232)
        blueLamp.name = "draggable"
        addChild(blueLamp)
        
        yellowLamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
        yellowLamp.position = CGPoint(x: -274, y: 467)
        yellowLamp.name = "draggable"
        addChild(yellowLamp)
        
        purpleLamp.imageLamp.texture = SKTexture(imageNamed: "purpleLamp")
        purpleLamp.position = CGPoint(x: 245, y: 464)
        purpleLamp.name = "draggable"
        addChild(purpleLamp)
        
        orangeLamp.imageLamp.texture = SKTexture(imageNamed: "Orangelamp")
        orangeLamp.position = CGPoint(x: 325, y: -172)
        orangeLamp.name = "draggable"
        addChild(orangeLamp)
        
        redLamp.imageLamp.texture = SKTexture(imageNamed: "redLamp")
        redLamp.name = "draggable"
        redLamp.position = CGPoint(x: -385, y: -140 )
        redLamp.imageLamp.size = CGSize(width: 800, height: 800)
        addChild(redLamp)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let touchedNodes = self.nodes(at: location)
            for node in touchedNodes.reversed() {
                if node.name == "draggable" {
                    self.currentNode = node
                }
            }
        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
            print(touchLocation)
        }
    }
}
