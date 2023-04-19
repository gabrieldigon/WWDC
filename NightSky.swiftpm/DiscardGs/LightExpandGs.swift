//
//  LpGameScene.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
//
import SpriteKit

class LightExpandGs: SKScene {
    
    var touchLocation = CGPoint()
    
    private var currentNode: SKNode?
    
    var lamp = LampNode()
    let star1 = StarNode()
    let background = SKSpriteNode(color: UIColor(named: "ColorBack")!, size: CGSize(width: 1500, height: 1500))
    let TitleLabel = SKLabelNode(fontNamed: "Marker Felt")
    let mountains = SKSpriteNode(imageNamed: "Mountains")
    let stars = SKSpriteNode(imageNamed: "Stars")
    override func didMove(to view: SKView) {
        //background
        background.lightingBitMask = 1
        addChild(background)
        //mountains
        mountains.size = CGSize(width: 1024, height: 1024)
        mountains.lightingBitMask = 1
        addChild(mountains)
        //stars
        stars.texture?.filteringMode = .nearest
        stars.size = CGSize(width: 1024, height: 1024)
        addChild(stars)
        //titulo
        TitleLabel.text = "Dark Sky"
        TitleLabel.fontSize = 100
        TitleLabel.position = CGPoint(x: 0.5, y: 100)
        TitleLabel.fontColor = .white
        TitleLabel.lineBreakMode = .byCharWrapping
        TitleLabel.numberOfLines = 3
        TitleLabel.preferredMaxLayoutWidth = 400
        addChild(TitleLabel)
        //lampada
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
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        lamp.light.categoryBitMask = 0
        lamp.imageLamp.texture = SKTexture(imageNamed: "lampDrawOff")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first, let node = self.currentNode {
            let touchLocation = touch.location(in: self)
            node.position = touchLocation
            lamp.light.categoryBitMask = 1
            lamp.imageLamp.texture = SKTexture(imageNamed: "lampDraw")
        }
        
    }
}


