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
    var instructionLabel = SKLabelNode(fontNamed: "Marker Felt")
    var warmLabel = SKLabelNode(fontNamed: "Marker Felt")
    var goodLabel = SKLabelNode(fontNamed:"Marker Felt")
    var badLabel = SKLabelNode(fontNamed:"Marker Felt")
    let goodEye = SKSpriteNode(imageNamed: "blueRoundEye")
    let badEye = SKSpriteNode(imageNamed: "browRoundEye")
    var drawCircle = circleNode()
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let blueViolet = SKSpriteNode(imageNamed: "blueVioletPallet")
    let warmPallet = SKSpriteNode(imageNamed: "WarmPallete")
    let pointer = SKSpriteNode(imageNamed: "alternativepointer")
    
    override func didMove(to view: SKView) {
        background.lightingBitMask = 1
        addChild(background) 
        
        //adding instruction label/blueviolet
        instructionLabel.text = "Choose one of the Lamps"
        instructionLabel.fontSize = 50
        instructionLabel.position = CGPoint(x: 0.5, y: 400)
        addChild(instructionLabel)
        //blueVioletPallet
        blueViolet.position = CGPoint(x: 100, y: -495)
      
        addChild(blueViolet)
        
        //adding downLabel
        warmLabel.text = "Warm         Blue-Violet"
        warmLabel.fontSize = 40
        warmLabel.position = CGPoint(x: 0.5, y: -400)
        addChild(warmLabel)
        
        //adding warm pallete
        warmPallet.position = CGPoint(x: -130, y: -500)
        addChild(warmPallet)
        
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
        addChild(goodLamp)
        
        // adding good lamp
        badLamp.name = "draggable"
        badLamp.position = CGPoint(x: 0.5, y: 150)
        addChild(badLamp)
        
        //label GoodLamp
        goodLabel.text = "Warm lights are good for our eyes"
        goodLabel.fontSize = 30
        goodLabel.position = CGPoint(x: 375, y: 0.5)
        goodLabel.fontColor = SKColor.white
        goodLabel.isHidden = true
        goodLabel.lineBreakMode = .byCharWrapping
        goodLabel.numberOfLines = 3
        goodLabel.preferredMaxLayoutWidth = 200
        addChild(goodLabel)
        
        //label GoodLamp
        badLabel.text = "Blue-Violet lights causes glare in our eyes!"
        badLabel.fontSize = 30
        badLabel.position = CGPoint(x: -375, y: 0.5)
        badLabel.fontColor = SKColor.white
        badLabel.isHidden = true
        badLabel.lineBreakMode = .byCharWrapping
        badLabel.numberOfLines = 3
        badLabel.preferredMaxLayoutWidth = 200
        addChild(badLabel)
        
        //addong pointer
        pointer.size = CGSize(width: 500, height: 500)
        pointer.position = CGPoint(x: 0.5, y: -375)
        pointer.zRotation = .pi/55
        pointer.isHidden = true
        addChild(pointer)
    }
  
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
            print(touchLocation)
            
            if goodLamp.position.x > -60 && goodLamp.position.x < 60 && goodLamp.position.y > -60 && goodLamp.position.y < 60 {
                goodLamp.light.categoryBitMask = 1
                goodLamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
                goodEye.shadowCastBitMask = 1
                goodLabel.isHidden = false
                pointer.isHidden = false
                
            }
            else {
                goodLabel.isHidden = true
                goodLamp.light.categoryBitMask = 0
                goodEye.shadowCastBitMask = 0
                goodLamp.imageLamp.texture = SKTexture(imageNamed: "lampDrawOff")

            }
            
             if badLamp.position.x > -60 && badLamp.position.x < 60 && badLamp.position.y > -60 && badLamp.position.y < 60 {
                 
                badLabel.isHidden = false
                badLamp.light.categoryBitMask = 1
                badLamp.imageLamp.texture = SKTexture(imageNamed: "blueLabel")
                badEye.shadowCastBitMask = 1
            }
            else{
                badLabel.isHidden = true
                badLamp.light.categoryBitMask = 0
                badLamp.imageLamp.texture = SKTexture(imageNamed: "lampDrawOff")
                badEye.shadowCastBitMask = 0
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
