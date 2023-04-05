//
//  AboutLP.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
// This screen will have info about light polution

import SwiftUI
import SpriteKit
struct AboutLP: View {
    var scene: SKScene {
        let scene = LightExpandGs()
        scene.size = CGSize(width: 1000, height: 1000)
        scene.anchorPoint = .init(x: 0.5, y: 0.5)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            
                VStack{
                        HStack{
                            Text("1.Click and drag to add a light")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .font(.largeTitle)
                            Spacer()
                        }
                    Spacer()
                    SpriteView(scene: scene)
                        .frame(width: 1000, height: 1000)
                        .ignoresSafeArea()
                    Spacer()
                }
            
        }
    }
}

struct AboutLP_Previews: PreviewProvider {
    static var previews: some View {
        AboutLP()
    }
}
