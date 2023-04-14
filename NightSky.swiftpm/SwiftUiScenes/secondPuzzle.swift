//
//  AboutLP.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 31/03/23.
// This screen will have info about light polution

import SwiftUI
import SpriteKit
struct secondPuzzle: View {
    var gamesScenes : [SKScene] = [LightExpandGs(),DiferentLightGs()]
    var scene: SKScene {
        let scene = gamesScenes[0]
        scene.size = CGSize(width: 1100, height: 1200)
        scene.anchorPoint = .init(x: 0.5, y: 0.5)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
                    
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack{
                    SpriteView(scene: scene)
                        .frame(width: 1100, height: 1200)
                        .ignoresSafeArea()
                        .navigationBarBackButtonHidden()
//                    NavigationLink(destination: firsScene()) {
//                        Text("Go to first view")
//                            .font(.custom("Marker Felt", size: 50))
//                            .foregroundColor(.white)
//                            .multilineTextAlignment(.center)
//                            .font(.largeTitle)
//                    }
                }
                
                
            }
       
    }
   
}

struct secondPuzzle_Previews: PreviewProvider {
    static var previews: some View {
        secondPuzzle()
    }
}

