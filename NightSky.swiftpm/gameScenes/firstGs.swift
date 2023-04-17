//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class firstgs: SKScene {
    
    var touchLocation = CGPoint()
    
    
    let downLeft = SKSpriteNode(imageNamed: "circle")
    private var currentNode: SKNode?
    
    var lamp = LampNode()
    let star1 = StarNode()
    
    let labelUp = SKLabelNode(fontNamed: "Marker Felt")
    let labelDown = SKLabelNode(fontNamed: "Marker Felt")
    
    let pointer = SKSpriteNode(imageNamed: "pointerDown2")
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let drawCircle = circleNode()
    override func didMove(to view: SKView) {
        background.lightingBitMask = 1
        addChild(background)
        
        //addong pointer
        pointer.size = CGSize(width: 350, height: 350)
        pointer.position = CGPoint(x: 0.5, y: -520)
        pointer.zRotation = .pi/55
        pointer.isHidden = true
        
        addChild(pointer)
        //adding star
        star1.star.size = CGSize(width: 200, height: 200)
        star1.position = CGPoint(x: 0.5, y: 400)
        star1.isHidden = true
        addChild(star1)
        
        //adding labels
        labelUp.text = "light expand in all directions, including UP TO THE STARS!"
        labelUp.fontSize = 30
        labelUp.position = CGPoint(x: 0.5, y: 500)
        labelUp.fontColor = .white
        labelUp.isHidden = true
        labelUp.lineBreakMode = .byCharWrapping
        labelUp.numberOfLines = 3
        labelUp.preferredMaxLayoutWidth = 400
        addChild(labelUp)
        
        labelDown.text = "Move the lamp"
        labelDown.fontSize = 35
        labelDown.position = CGPoint(x: 0.5, y: -300)
        labelDown.fontColor = .white
        labelDown.lineBreakMode = .byCharWrapping
        labelDown.numberOfLines = 3
        labelDown.preferredMaxLayoutWidth = 600
        addChild(labelDown)
        
        // middleCircle
        drawCircle.zPosition = 1
        drawCircle.position = CGPoint(x: 0.5, y: -100)
        drawCircle.DrawCircle.size = .init(width: 350, height: 350)
        drawCircle.DrawCircle.shadowCastBitMask = 1
        addChild(drawCircle)
        
        //lamp
        lamp.position = CGPoint(x: 350, y: 0.5)
        lamp.light.falloff = 0.5
        lamp.name = "draggable"
        addChild(lamp)
        
        //shadowCaster
        let auxiliarCircle = SKSpriteNode(imageNamed: "circle")
        auxiliarCircle.size = CGSize(width: 400, height: 400)
        auxiliarCircle.addChild(downLeft)
        auxiliarCircle.name = "draggable"
        auxiliarCircle.position = CGPoint(x: 0.5, y: 220)
        auxiliarCircle.lightingBitMask = 1
        downLeft.lightingBitMask = 1
        downLeft.size = CGSize(width: 400, height: 400)
        downLeft.shadowCastBitMask = 1
        downLeft.texture?.filteringMode = .nearest
        addChild(auxiliarCircle)
        
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
        
        if let location = touches.first?.location(in: self) {
            if lamp.position.x > 0 && lamp.position.x < 30 && lamp.position.y > -130 && lamp.position.y < -70 {
                star1.isHidden = false
                
                downLeft.isHidden = false
                
                pointer.isHidden = false
                
                
                labelUp.isHidden = false
                labelDown.text = "you can move the shadow as well..."
                lamp.light.categoryBitMask = 1
                lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
                
                drawCircle.isHidden = true
                
            }
        }
    }
}


