//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LightExpandGs: SKScene {
    
    var touchLocation = CGPoint()
    let downWall = SKSpriteNode(imageNamed: "LineDraw2")
    let rightwall = SKSpriteNode(imageNamed: "LineDraw2")
    let leftwall = SKSpriteNode(imageNamed: "LineDraw2")
    let upwall = SKSpriteNode(imageNamed: "LineDraw2")
    
    var lamp = LampNode()
    let star1 = StarNode()
    let star2 = StarNode()
    
    let labelRight = SKLabelNode(fontNamed: "Marker Felt")
    let labelLeft = SKLabelNode(fontNamed: "Marker Felt")
    let labelUp = SKLabelNode(fontNamed: "Marker Felt")
    let labelDown = SKLabelNode(fontNamed: "Marker Felt")
    let background = SKSpriteNode(imageNamed: "background")
    let drawCircle = circleNode()
    override func didMove(to view: SKView) {
        background.lightingBitMask = 1
        addChild(background)
        //criando cenario
            
            
            downWall.position = CGPoint(x: 0.5, y: -450)
            downWall.lightingBitMask = 1
            downWall.zRotation = .pi / 2
            downWall.size = .init(width: 700, height: 700)
            downWall.isHidden = true
//            addChild(downWall)
            
         
            upwall.position = CGPoint(x: 0.5, y: 450)
            upwall.lightingBitMask = 1
            upwall.zRotation = .pi / 2
            upwall.size = .init(width: 700, height: 700)
            upwall.isHidden = true
//            addChild(upwall)
            
            
            rightwall.position = CGPoint(x: 400, y: 0.5)
            rightwall.lightingBitMask = 1
            rightwall.isHidden = true
//            addChild(rightwall)
            
           
            leftwall.position = CGPoint(x: -400, y: 0.5)
            leftwall.lightingBitMask = 1
            leftwall.isHidden = true
//            addChild(leftwall)
    //adicionando a luz
        star1.position = CGPoint(x: 0.5, y: 900)
        addChild(star1)
        star2.position = CGPoint(x: 0.5, y: -900)
        addChild(star2)
        lamp.position = CGPoint(x: 350, y: 0.5)
        addChild(lamp)
        
        //labels de sucesso
       
        labelRight.text = "light expand in all directions!"
        labelRight.fontSize = 30
        labelRight.position = CGPoint(x: 300, y: 0.5)
        labelRight.fontColor = SKColor.white
        labelRight.isHidden = true
        labelRight.lineBreakMode = .byCharWrapping
        labelRight.numberOfLines = 3
        labelRight.preferredMaxLayoutWidth = 200
        addChild(labelRight)
        
        labelLeft.text = "light expand in all directions!"
        labelLeft.position = CGPoint(x: -300, y: 0.5)
        labelLeft.fontSize = 30
        labelLeft.fontColor = SKColor.white
        labelLeft.isHidden = true
        labelLeft.lineBreakMode = .byCharWrapping
        labelLeft.numberOfLines = 3
        labelLeft.preferredMaxLayoutWidth = 200
        addChild(labelLeft)
        
        labelUp.text = "light expand in all directions!"
        labelUp.fontSize = 30
        labelUp.position = CGPoint(x: 0.5, y: 300)
        labelUp.fontColor = SKColor.white
        labelUp.isHidden = true
        labelUp.lineBreakMode = .byCharWrapping
        labelUp.numberOfLines = 3
        labelUp.preferredMaxLayoutWidth = 200
        addChild(labelUp)
        
        
        labelDown.text = "light expand in all directions!"
        labelDown.fontSize = 30
        labelDown.position = CGPoint(x: 0.5, y: -300)
        labelDown.fontColor = SKColor.white
        labelDown.isHidden = true
        labelDown.lineBreakMode = .byCharWrapping
        labelDown.numberOfLines = 3
        labelDown.preferredMaxLayoutWidth = 200
        addChild(labelDown)
        
        // circulo do meio
        drawCircle.zPosition = 1
        drawCircle.position = CGPoint(x: 0.5, y: 0.5)
        drawCircle.DrawCircle.size = .init(width: 500, height: 500)
        
        addChild(drawCircle)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.position = location
            
           
            
            if lamp.position.x > -60 && lamp.position.x < 60 && lamp.position.y > -60 && lamp.position.y < 60 {
                
                rightwall.isHidden = false
                leftwall.isHidden = false
                upwall.isHidden = false
                downWall.isHidden = false
                
                labelRight.isHidden = false
                labelLeft.isHidden = false
                labelUp.isHidden = false
                labelDown.isHidden = false
                
                lamp.light.categoryBitMask = 1
                lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
                
            }
            else{
                labelRight.isHidden = true
                labelLeft.isHidden = true
                labelUp.isHidden = true
                labelDown.isHidden = true
            }
           
        }
    }
}













 
