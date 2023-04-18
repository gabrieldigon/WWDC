//
//  mainMenu.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 18/04/23.
//

import SwiftUI
import SpriteKit
import Foundation
struct mainMenu: View {
    var scene: SKScene {
        let scene = LightExpandGs()
        scene.size = CGSize(width: 1024, height: 960)
        scene.anchorPoint = .init(x: 0.5, y: 0.5)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        NavigationView{
            ZStack{
                Color(UIColor(named: "ColorBack")!)
                
                    .ignoresSafeArea()
                VStack(spacing: 300){
                    
                    SpriteView(scene: scene)
                        .frame(width: 1024, height: 965)
                        .ignoresSafeArea()
                        .navigationBarBackButtonHidden()
                    
                    NavigationLink(destination: Introduction()) {
                        Text("next")
                            .navigationBarBackButtonHidden()
                            .font(.custom("Marker Felt", size: 50))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .font(.largeTitle)
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct mainMenu_Previews: PreviewProvider {
    static var previews: some View {
        mainMenu()
    }
}
