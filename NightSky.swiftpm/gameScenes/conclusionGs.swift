//
//  File.swift
//  
//
//  Created by Gabriel Dias Goncalves on 18/04/23.
//

import Foundation
import SpriteKit

class ConclusionGs: SKScene {
    
    var badArea = SKSpriteNode(imageNamed: "justTheGoodCircle")
    var middleArea = SKSpriteNode(imageNamed: "justTheGoodCircle")
    var goodArea = SKSpriteNode(imageNamed: "JustTheBadcircle")
    var lamp = LampNode()
    var badlamp = SKSpriteNode(imageNamed: "justTheBase")
    var middleLamp = SKSpriteNode(imageNamed: "justTheBase")
    var goodLamp = SKSpriteNode(imageNamed: "justTheBase")
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let instructionLabel = SKLabelNode(fontNamed: "Marker Felt")
    let ground = SKSpriteNode(imageNamed: "otherGround")
    private var currentNode: SKNode?
    let badHat = SKSpriteNode(imageNamed: "MiddleShield")
    var goodhat = SKSpriteNode(imageNamed: "NewGoodshield")
    let pointer = SKSpriteNode(imageNamed: "alternativepointer")
    let closeLights = SKLabelNode(fontNamed: "Marker Felt")
    
    var Star1 = StarNode()
    var Star2 = StarNode()
    var Star3 = StarNode()
    var Star4 = StarNode()
    var Star5 = StarNode()
    var Star6 = StarNode()
    var Star7 = StarNode()
    var Star8 = StarNode()
    override func didMove(to view: SKView) {
        //background
        background.lightingBitMask = 1
        addChild(background)
        
        //adding ground
        ground.position = CGPoint(x: 0.5, y: -350)
        ground.physicsBody = SKPhysicsBody(texture: ground.texture!, size: ground.texture!.size())
        ground.physicsBody?.affectedByGravity = false
        ground.physicsBody?.isDynamic = false
        ground.physicsBody?.categoryBitMask = 1
        addChild(ground)
        //adding lampShields
        
        //add shields
        badHat.position = CGPoint(x: -14, y: 50)
        badHat.size = CGSize(width: 400, height: 400)
        addChild(badHat)
       
        goodhat.position = CGPoint(x: 290, y: 10)
        goodhat.size = CGSize(width: 700, height: 700)
        addChild(goodhat)
        
        //adding streetLights
        badlamp.position = CGPoint(x: 300, y: -145)
        badlamp.physicsBody = SKPhysicsBody(texture: badlamp.texture!, size: badlamp.texture!.size())
        badlamp.physicsBody?.affectedByGravity = false
        badlamp.physicsBody?.isDynamic = false
        badlamp.physicsBody?.categoryBitMask = 1
        badlamp.size = CGSize(width: 800, height: 800)
        addChild(badlamp)
        
        middleLamp.position = CGPoint(x: 0.5, y: -145)
        middleLamp.physicsBody = SKPhysicsBody(texture: middleLamp.texture!, size: middleLamp.texture!.size())
        middleLamp.physicsBody?.affectedByGravity = false
        middleLamp.physicsBody?.isDynamic = false
        middleLamp.physicsBody?.categoryBitMask = 1
        middleLamp.size = CGSize(width: 800, height: 800)
        addChild(middleLamp)
        
        goodLamp.position = CGPoint(x: -300, y: -145)
        goodLamp.physicsBody = SKPhysicsBody(texture: goodLamp.texture!, size: goodLamp.texture!.size())
        goodLamp.physicsBody?.affectedByGravity = false
        goodLamp.physicsBody?.isDynamic = false
        goodLamp.physicsBody?.categoryBitMask = 1
        goodLamp.size = CGSize(width: 800, height: 800)
        addChild(goodLamp)
        
        //adding turn on areas
        badArea.position = CGPoint(x: 295, y: -100)
        badArea.size = CGSize(width: 750, height: 750)
        addChild(badArea)
        
        middleArea.position = CGPoint(x: 10, y: -150)
        middleArea.size = CGSize(width: 1200, height: 1200)
        addChild(middleArea)
        
        goodArea.position = CGPoint(x: -290, y: -150)
        goodArea.size = CGSize(width: 1200, height: 1200)
        addChild(goodArea)
        
        //lamp
        lamp.imageLamp.size = CGSize(width: 400, height: 400)
        lamp.position = CGPoint(x: 0.5, y: 200)
        lamp.light.falloff = 0.1
        lamp.name = "draggable"
        addChild(lamp)
        //label instruction
        instructionLabel.text = "Choose the right shield for the streepole."
        instructionLabel.fontSize = 40
        instructionLabel.position = CGPoint(x: 0.5, y: 450)
        instructionLabel.fontColor = .white
        instructionLabel.verticalAlignmentMode = .center
        instructionLabel.lineBreakMode = .byCharWrapping
        instructionLabel.numberOfLines = 3
        instructionLabel.preferredMaxLayoutWidth = 400
        addChild(instructionLabel)
        
        //ading stars after-> search for a method to spawn nodes at position
        
        Star1.position = CGPoint(x: -105, y: 302)
        Star2.position = CGPoint(x: 71, y: 302)
        Star3.position = CGPoint(x: 260, y: 449)
        Star4.position = CGPoint(x: -260, y: 449)
        Star5.position = CGPoint(x: -440, y: 453)
        Star6.position = CGPoint(x: 440, y: 453)
        Star7.position = CGPoint(x: -324, y: 327)
        Star8.position = CGPoint(x: 324, y: 327)
        
        addChild(Star1)
        addChild(Star2)
        addChild(Star3)
        addChild(Star4)
        addChild(Star5)
        addChild(Star6)
        addChild(Star7)
        addChild(Star8)
        
        pointer.size = CGSize(width: 500, height: 500)
        pointer.position = CGPoint(x: 0.5, y: -392)
        pointer.zRotation = .pi/55
        pointer.isHidden = true
        addChild(pointer)
        
        //closeLights label
        
        closeLights.text = "Streetpoles must STAY AWAY from eachother so they don't enlight the SAME PLACE."
        closeLights.fontSize = 37
        closeLights.position = CGPoint(x: -135, y: -450)
        closeLights.fontColor = .white
        closeLights.verticalAlignmentMode = .center
        closeLights.lineBreakMode = .byCharWrapping
        closeLights.numberOfLines = 3
        closeLights.preferredMaxLayoutWidth = 750
        addChild(closeLights)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
            print(touchLocation)
        }
        ///turnOnAreas
        //bad
        if lamp.position.x > -347 && lamp.position.x < -291 && lamp.position.y > -34 && lamp.position.y < -7 {
            lamp.light.categoryBitMask = 1
            lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
            instructionLabel.text = "A lot of light is going to the stars so they disapear."
            Star1.isHidden = true
            Star2.isHidden = true
            Star3.isHidden = true
            Star4.isHidden = true
            Star5.isHidden = true
            Star6.isHidden = true
            Star7.isHidden = true
            Star8.isHidden = true
            goodArea.isHidden = true
        }
        //middle
        else if lamp.position.x > -37 && lamp.position.x < 17 && lamp.position.y > -24 && lamp.position.y < -7 {
            lamp.light.categoryBitMask = 1
            lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
            instructionLabel.text = "This one is not sooooo bad but light still goes up."
            Star5.isHidden = true
            Star6.isHidden = true
            Star7.isHidden = true
            Star8.isHidden = true
            middleArea.isHidden = true
            badHat.shadowCastBitMask = 1
        }
        //good
        else if lamp.position.x > 265 && lamp.position.x < 313 && lamp.position.y > -34 && lamp.position.y < -7 {
            goodhat.shadowCastBitMask = 1
            lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
            lamp.light.categoryBitMask = 1
            instructionLabel.text = "This one is perfect, light is going only down."
            pointer.isHidden = false
            badArea.isHidden = true
        }
        //TurnedOff
        else{
            badArea.isHidden = false
            goodArea.isHidden = false
            middleArea.isHidden = false
            lamp.imageLamp.texture = SKTexture(imageNamed: "lampDrawOff")
            goodhat.shadowCastBitMask = 0
            badHat.shadowCastBitMask = 0
            lamp.light.categoryBitMask = 0
            instructionLabel.text = "Choose the right shield for the streepole."
            Star1.isHidden = false
            Star2.isHidden = false
            Star3.isHidden = false
            Star4.isHidden = false
            Star5.isHidden = false
            Star6.isHidden = false
            Star7.isHidden = false
            Star8.isHidden = false
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
