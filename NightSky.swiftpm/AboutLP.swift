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
        let scene = LpGameScene()
        scene.size = CGSize(width: 900, height: 400)
        scene.anchorPoint = .init(x: 0.5, y: 0.5)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        
        ZStack{
            Color.black
                .ignoresSafeArea()
            
                VStack(spacing: 15){
                    if #available(iOS 16.0, *) {
                        HStack{
                            Text("Porque não se ve o céu de verdade?")
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .tracking(2)
                                .baselineOffset(13)
                                .font(.largeTitle)
                                .bold(true)
                            Spacer()
                        }
                        Text("A maior razão é a poluição luminosa que ocorre quando luzes artificiais são apontadas para o lugar errado: O céu, isso faz com que nossas luzes ofusquem o brilho das luzes naturais de corpos celestes que estão mais distantes")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .tracking(2)
                            .font(.system(size: 25))
                            .baselineOffset(10)
                        
                        Text("veja no exemplo abaixo como uma fonte de luz mais proxima (💡▫️) reage com o chão em comparação fonte de luz mais longe (🌟🔹).")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .tracking(2)
                            .font(.system(size: 25))
                            .baselineOffset(13)
                    } else {
                        // Fallback on earlier versions
                    }
                    SpriteView(scene: scene)
                        
                        .frame(width: 900, height: 400)
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
