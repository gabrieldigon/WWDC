//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LightExpandGs: SKScene {
    
    var touchLocation = CGPoint()
    let downWall = SKSpriteNode(imageNamed: "ground")
    let rightwall = SKSpriteNode(imageNamed: "Square")
    let leftwall = SKSpriteNode(imageNamed: "triangle")
    let upwall = SKSpriteNode(imageNamed: "myStar")
    
    var lamp = LampNode()
    let star1 = StarNode()
    
    
    
    let labelUp = SKLabelNode(fontNamed: "Marker Felt")
    
    let background = SKSpriteNode(imageNamed: "backgroundDegrade")
    let drawCircle = circleNode()
    override func didMove(to view: SKView) {
        background.lightingBitMask = 1
        background.size = .init(width: 1100, height: 1200)
        addChild(background)
        //criando cenario
        // circulo do meio
        drawCircle.zPosition = 1
        drawCircle.position = CGPoint(x: 0.5, y: 0.5)
        drawCircle.DrawCircle.size = .init(width: 350, height: 350)
        drawCircle.DrawCircle.shadowCastBitMask = 1
        addChild(drawCircle)
        
        downWall.position = CGPoint(x: 0.5, y: -450)
        downWall.lightingBitMask = 1
        downWall.size = CGSize(width: 1000, height: 1000)
        downWall.isHidden = true
        addChild(downWall)
        
        
        
        
        
        rightwall.position = CGPoint(x: 400, y: 0.5)
        rightwall.lightingBitMask = 1
        rightwall.isHidden = true
        rightwall.size = CGSize(width: 100, height: 100)
        rightwall.shadowCastBitMask = 1
        addChild(rightwall)
        
        
        leftwall.position = CGPoint(x: -400, y: 0.5)
        leftwall.lightingBitMask = 1
        leftwall.isHidden = true
        leftwall.size = CGSize(width: 100, height: 100)
        addChild(leftwall)
        
        //adicionando a luz
        star1.position = CGPoint(x: 0.5, y: 450)
        star1.star.size = CGSize(width: 400, height: 400)
        star1.isHidden = true
        addChild(star1)
        lamp.position = CGPoint(x: 350, y: 0.5)
        addChild(lamp)
        
        //labels de sucesso
        
        
        labelUp.text = "light expand in all directions, including UP TO THE STARS!"
        labelUp.fontSize = 30
        labelUp.position = CGPoint(x: 0.5, y: 200)
        labelUp.fontColor = SKColor.white
        labelUp.isHidden = true
        labelUp.lineBreakMode = .byCharWrapping
        labelUp.numberOfLines = 3
        labelUp.preferredMaxLayoutWidth = 400
        addChild(labelUp)
        
        
        
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let location = touches.first?.location(in: self) {
            lamp.position = location
            
            
            
            if lamp.position.x > -60 && lamp.position.x < 60 && lamp.position.y > -60 && lamp.position.y < 60 {
                star1.isHidden = false
                rightwall.isHidden = false
                leftwall.isHidden = false
                labelUp.isHidden = false
                lamp.light.categoryBitMask = 1
                lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
                
                
            }
            else{
                
                
            }
            
        }
    }
}


