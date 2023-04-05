//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LightExpandGs: SKScene {
    
    var touchLocation = CGPoint()
    let downWall = SKSpriteNode(color: .black, size: CGSize(width: 900, height: 20))
    let rightwall = SKSpriteNode(color: .black, size: CGSize(width: 20, height: 520))
    let leftwall = SKSpriteNode(color: .black, size: CGSize(width: 20, height: 520))
    let upwall = SKSpriteNode(color: .black, size: CGSize(width: 900, height: 20))
    var lamp = LampNode()
    let star1 = StarNode()
    let star2 = StarNode()
    let labelRight = SKLabelNode(fontNamed: "Marker Felt")
    let labelLeft = SKLabelNode(fontNamed: "Marker Felt")
    let labelUp = SKLabelNode(fontNamed: "Marker Felt")
    let labelDown = SKLabelNode(fontNamed: "Marker Felt")
    let drawCircle = circleNode()
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.black
        
        //criando cenario
            
            
            downWall.position = CGPoint(x: 0.5, y: -250)
            downWall.lightingBitMask = 1
           
            addChild(downWall)
            
         
            upwall.position = CGPoint(x: 0.5, y: 250)
            upwall.lightingBitMask = 1
           
            addChild(upwall)
            
            
            rightwall.position = CGPoint(x: 440, y: 0.5)
            rightwall.lightingBitMask = 1
           
            addChild(rightwall)
            
           
            leftwall.position = CGPoint(x: -440, y: 0.5)
            leftwall.lightingBitMask = 1
            
            addChild(leftwall)
    //adicionando a luz
        star1.position = CGPoint(x: 0.5, y: 900)
        addChild(star1)
        star2.position = CGPoint(x: 0.5, y: -900)
        addChild(star2)
        lamp.position = CGPoint(x: 350, y: 0.5)
        addChild(lamp)
        
        //labels de sucesso
       
        labelRight.text = "light expand in all directions!"
        labelRight.fontSize = 20
        labelRight.position = CGPoint(x: 250, y: 0.5)
        labelRight.fontColor = SKColor.white
        labelRight.isHidden = true
        labelRight.lineBreakMode = .byCharWrapping
        labelRight.numberOfLines = 2
        labelRight.preferredMaxLayoutWidth = 125
        addChild(labelRight)
        
        labelLeft.text = "light expand in all directions!"
        labelLeft.position = CGPoint(x: -250, y: 0.5)
        labelLeft.fontSize = 20
        labelLeft.fontColor = SKColor.white
        labelLeft.isHidden = true
        labelLeft.lineBreakMode = .byCharWrapping
        labelLeft.numberOfLines = 2
        labelLeft.preferredMaxLayoutWidth = 125
        addChild(labelLeft)
        
        labelUp.text = "light expand in all directions!"
        labelUp.fontSize = 20
        labelUp.position = CGPoint(x: 0.5, y: 150)
        labelUp.fontColor = SKColor.white
        labelUp.isHidden = true
        labelUp.lineBreakMode = .byCharWrapping
        labelUp.numberOfLines = 2
        labelUp.preferredMaxLayoutWidth = 125
        addChild(labelUp)
        
        
        labelDown.text = "light expand in all directions!"
        labelDown.fontSize = 20
        labelDown.position = CGPoint(x: 0.5, y: -150)
        labelDown.fontColor = SKColor.white
        labelDown.isHidden = true
        labelDown.lineBreakMode = .byCharWrapping
        labelDown.numberOfLines = 2
        labelDown.preferredMaxLayoutWidth = 125
        addChild(labelDown)
        
        // circulo do meio
        drawCircle.zPosition = 1
        
        addChild(drawCircle)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.position = location
            
           
            
            if lamp.position.x > -60 && lamp.position.x < 60 && lamp.position.y > -60 && lamp.position.y < 60 {
              
                rightwall.color = UIColor.white
                leftwall.color = UIColor.white
                upwall.color = UIColor.white
                downWall.color = UIColor.white
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













 
