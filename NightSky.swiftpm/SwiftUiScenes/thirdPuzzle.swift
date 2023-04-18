//
//  thirdPuzzle.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 17/04/23.
//

import SwiftUI
import Foundation
import SpriteKit

struct thirdPuzzle: View {
    var gamesScenes : [SKScene] = [DiferentLightGs()]
    var scene: SKScene {
        let scene = gamesScenes[0]
        scene.size = CGSize(width: 1100, height: 1200)
        scene.anchorPoint = .init(x: 0.5, y: 0.5)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
            ZStack{
                Color(UIColor(named: "ColorBack")!)
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

struct thirdPuzzle_Previews: PreviewProvider {
    static var previews: some View {
        thirdPuzzle()
    }
}
