//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LightExpandGs: SKScene {
    
    var touchLocation = CGPoint()
    
    let downRight = SKSpriteNode(imageNamed: "rectangle")
    let downLeft = SKSpriteNode(imageNamed: "rectangle")
    let upRight = SKSpriteNode(imageNamed: "rectangle")
    let upLeft = SKSpriteNode(imageNamed: "rectangle")
    private var currentNode: SKNode?
    
    var lamp = LampNode()
    let star1 = StarNode()
    
    let labelUp = SKLabelNode(fontNamed: "Marker Felt")
    
  
    let drawCircle = circleNode()
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor(named: "ColorBack")!
        
        //label de sucesso
        
        labelUp.text = "light expand in all directions, including UP TO THE STARS!"
        labelUp.fontSize = 30
        labelUp.position = CGPoint(x: 0.5, y: 450)
        labelUp.fontColor = .white
        labelUp.isHidden = true
        labelUp.lineBreakMode = .byCharWrapping
        labelUp.numberOfLines = 3
        labelUp.preferredMaxLayoutWidth = 400
        addChild(labelUp)
        
        // circulo do meio
        drawCircle.zPosition = 1
        drawCircle.position = CGPoint(x: 0.5, y: 0.5)
        drawCircle.DrawCircle.size = .init(width: 350, height: 350)
        drawCircle.DrawCircle.shadowCastBitMask = 1
        addChild(drawCircle)
    
        //paredes
        
        downRight.position = CGPoint(x: 200, y: -200)
        downRight.lightingBitMask = 1
        downRight.size = CGSize(width: 300, height: 300)
        downRight.shadowCastBitMask = 1
        downLeft.texture?.filteringMode = .nearest
        addChild(downRight)
        
        
        downLeft.position = CGPoint(x: -200, y: -200)
        downLeft.lightingBitMask = 1
        downLeft.size = CGSize(width: 300, height: 300)
        downLeft.shadowCastBitMask = 1
        downLeft.texture?.filteringMode = .nearest
        addChild(downLeft)
        
        
        upRight.position = CGPoint(x: 200, y: 200)
        upRight.lightingBitMask = 1
        upRight.size = CGSize(width: 300, height: 300)
        upRight.shadowCastBitMask = 1
        upRight.texture?.filteringMode = .nearest
        addChild(upRight)
        
        upLeft.position = CGPoint(x: -200, y: 200)
        upLeft.lightingBitMask = 1
        upLeft.size = CGSize(width: 300, height: 300)
        upLeft.shadowCastBitMask = 1
        upLeft.texture?.filteringMode = .nearest
        addChild(upLeft)
        
        //adicionando a estrela
        
//        star1.position = CGPoint(x: 0.5, y: 450)
//        star1.star.size = CGSize(width: 200, height: 200)
//        star1.isHidden = true
//        addChild(star1)
        
        //adicionando a luz
        
        lamp.position = CGPoint(x: 350, y: 0.5)
        lamp.name = "draggable"
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
        
        if let location = touches.first?.location(in: self) {
            if lamp.position.x > -60 && lamp.position.x < 60 && lamp.position.y > -60 && lamp.position.y < 60 {
//                star1.isHidden = false
                
                downLeft.isHidden = false
                downRight.isHidden = false
                upRight.isHidden = false
                upLeft.isHidden = false
                
                labelUp.isHidden = false
                lamp.light.categoryBitMask = 1
                lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
                
                drawCircle.isHidden = true
                
            }
        }
    }
}


