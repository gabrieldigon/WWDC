//
//  Conclusion.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 19/04/23.
//

import SwiftUI
import SpriteKit
struct Conclusion: View {
    var scene: SKScene {
        let scene = StarsUp()
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
//                    NavigationLink(destination: Conclusion()) {
//                        Text("next")
//                            .font(.custom("Marker Felt", size: 50))
//                            .foregroundColor(.white)
//                            .multilineTextAlignment(.center)
//                            .font(.largeTitle)
//                    }
                }
                
                
            }
       
    }
   
}

struct Conclusion_Previews: PreviewProvider {
    static var previews: some View {
        Conclusion()
    }
}
