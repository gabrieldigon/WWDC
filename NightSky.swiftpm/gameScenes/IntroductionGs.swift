//
//  IntroductionGs.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 19/04/23.
//

import Foundation
import SpriteKit
class Introductiongs: SKScene {
    
    
    var touchLocation = CGPoint()
    
    private var currentNode: SKNode?
    
    var lamp = LampNode()
   
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let TitleLabel = SKLabelNode(fontNamed: "Marker Felt")
    let development = SKLabelNode(fontNamed: "Marker Felt")
    let callToAction = SKLabelNode(fontNamed: "Marker Felt")
    let stars4 = SKSpriteNode(imageNamed: "Stars")
    let stars3 = SKSpriteNode(imageNamed: "Stars")
    let stars2 = SKSpriteNode(imageNamed: "Stars")
    let stars = SKSpriteNode(imageNamed: "Stars")
    override func didMove(to view: SKView) {
        //background
        background.lightingBitMask = 1
        addChild(background)
        //stars
        stars4.position = CGPoint(x: 0.5, y: 400)
//        addChild(stars4)
        stars3.position = CGPoint(x: 0.5, y: -1600)
        stars3.alpha = 0.6
        addChild(stars3)
        stars2.position = CGPoint(x: 0.5, y: -800)
        stars2.alpha = 0.6
        addChild(stars2)
        stars.alpha = 0.6
        addChild(stars)
        //titulo
        TitleLabel.text = "The stars are beautiful!"
        TitleLabel.fontSize = 70
        TitleLabel.position = CGPoint(x: 0.5, y: 400)
        TitleLabel.fontColor = .white
        TitleLabel.lineBreakMode = .byCharWrapping
        TitleLabel.numberOfLines = 3
        TitleLabel.preferredMaxLayoutWidth = 700
        addChild(TitleLabel)
        
        development.text = "Unfortunately we can’t see them in the big city and some people don’t even know how the REAL sky looks like."
        development.fontSize = 65
        development.position = CGPoint(x: 0.5, y: -150)
        development.fontColor = .white
        development.lineBreakMode = .byCharWrapping
        development.numberOfLines = 4
        development.preferredMaxLayoutWidth = 700
        addChild(development)
        
        callToAction.text = "But why that happens?"
        callToAction.fontSize = 65
        callToAction.position = CGPoint(x: 0.5, y: -350)
        callToAction.fontColor = .white
        callToAction.lineBreakMode = .byCharWrapping
        callToAction.numberOfLines = 3
        callToAction.preferredMaxLayoutWidth = 700
        addChild(callToAction)
        
        //lampada
        lamp.position = CGPoint(x: 400, y: -694)
        lamp.imageLamp.texture = SKTexture(imageNamed: "myStar")
        lamp.imageLamp.size = CGSize(width: 250, height: 250)
        lamp.light.categoryBitMask = 1
     
        addChild(lamp)
        
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
