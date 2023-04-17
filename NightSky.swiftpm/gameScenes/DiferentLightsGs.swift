//
//  DiferentLightsGs.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 10/04/23.
//

import Foundation
import SpriteKit

class DiferentLightGs : SKScene {
    var goodLamp  = LampNode()
    var badLamp  = LampNode()
    private var currentNode: SKNode?
    var goodLabel = SKLabelNode(fontNamed:"Marker Felt")
    var badLabel = SKLabelNode(fontNamed:"Marker Felt")
    let goodEye = SKSpriteNode(imageNamed: "blueRoundEye")
    let badEye = SKSpriteNode(imageNamed: "browRoundEye")
    var drawCircle = circleNode()
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let labelUp = SKLabelNode(fontNamed: "Marker Felt")

    override func didMove(to view: SKView) {
        
        addChild(background)
        //adding instruction Label
        labelUp.text = "Choose the good Lamp"
        labelUp.fontSize = 40
        labelUp.position = CGPoint(x: 0.5, y: 550)
        labelUp.fontColor = .white
        labelUp.lineBreakMode = .byCharWrapping
        labelUp.numberOfLines = 3
        labelUp.preferredMaxLayoutWidth = 400
        addChild(labelUp)

        // adding bad eye
        badEye.position = CGPoint(x: -250, y: 0.5)
        badEye.shadowCastBitMask = 2
        addChild(badEye)
       
        
        //adicionar olho bom
        goodEye.position = CGPoint(x: 250, y: 0.5)
        goodEye.shadowCastBitMask = 1
        addChild(goodEye)
        
        //adding circle
        
        drawCircle.position = CGPoint(x: 0.5, y: 0.5)
        drawCircle.DrawCircle.size = .init(width: 350, height: 350)
        addChild(drawCircle)
        // adding bad lamp
        goodLamp.name = "draggable"
        goodLamp.position = CGPoint(x: 0.5, y: -150)
        goodLamp.light.shadowColor = .white
        addChild(goodLamp)
        
        // adding good lamp
        badLamp.name = "draggable"
        badLamp.position = CGPoint(x: 0.5, y: 150)
        badLamp.light.shadowColor = .systemBlue
        addChild(badLamp)
        
        //label GoodLamp
        goodLabel.text = "This kind of light is safe to use!"
        goodLabel.fontSize = 30
        goodLabel.position = CGPoint(x: 375, y: 0.5)
        goodLabel.fontColor = SKColor.black
        goodLabel.isHidden = true
        goodLabel.lineBreakMode = .byCharWrapping
        goodLabel.numberOfLines = 3
        goodLabel.preferredMaxLayoutWidth = 200
        addChild(goodLabel)
        
        //label GoodLamp
        badLabel.text = "This light causes glare in our eyes!"
        badLabel.fontSize = 30
        badLabel.position = CGPoint(x: -375, y: 0.5)
        badLabel.fontColor = SKColor.black
        badLabel.isHidden = true
        badLabel.lineBreakMode = .byCharWrapping
        badLabel.numberOfLines = 3
        badLabel.preferredMaxLayoutWidth = 200
        addChild(badLabel)
        
       

    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.currentNode = nil
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
            print(touchLocation)
            
            if goodLamp.position.x > -60 && goodLamp.position.x < 60 && goodLamp.position.y > -60 && goodLamp.position.y < 60 {
                goodLamp.light.categoryBitMask = 1
                background.lightingBitMask = 1
                goodLamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
                goodLabel.isHidden = false
                
            }
            else{
                labelUp.isHidden = false
                goodLamp.light.categoryBitMask = 0
                goodLamp.imageLamp.texture = SKTexture(imageNamed: "lampDrawOff")
                goodLabel.isHidden = true
            }
            if badLamp.position.x > -60 && badLamp.position.x < 60 && badLamp.position.y > -60 && badLamp.position.y < 60 {
                badLamp.light.categoryBitMask = 2
                background.lightingBitMask = 2
                badLamp.imageLamp.texture = SKTexture(imageNamed: "blueLabel")
                badLabel.isHidden = false
                badLamp.light.lightColor = .blue
            }
            else{
                badLamp.light.categoryBitMask = 0
                badLamp.imageLamp.texture = SKTexture(imageNamed: "lampDrawOff")
                badLabel.isHidden = true
            }
        }
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
   
}
