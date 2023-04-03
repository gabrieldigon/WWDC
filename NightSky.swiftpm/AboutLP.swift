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
                        Text("Titulo")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .tracking(2)
                            .baselineOffset(13)
                        
                        Text("Imagine como os homens primitivos olhavam para o céu a noite. Milhões de pontos brilhantes desafiando sua compreensão da realidade. Muitos criaram mitologias, outros aprenderam a se orientar. Mas, uma coisa é certa, nossa visão no Universo impulsionou nossa imaginação e ciência. Porém, poucos agora tem o privilégio de olhar para o céu noturno e ver as estrelas. As cidades estão inundando o céu com poluição luminosa, o que prejudica consideravelmente a obervação das estrelas. Só que ainda existem lugares onde isso é possível.O fotógrafo  Sriram Murali resolveu mostrar essa diferença entre locais com muita e com pouca poluição luminosa em um pequeno time lapse. Para o projeto ele utilizou a  escala Bortle que mede a quantidade de poluição luminosa no céu noturno. A escala vai de 1 a 9, sendo que o 1 é o céu totalmente limpo, onde as constelações do zodíaco são perfeitamente identificadas e é possível observar suas características, e o 8 e 9 são os céus das cidades, normalmente alaranjados.")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .tracking(2)
                            .baselineOffset(13)
                    } else {
                        // Fallback on earlier versions
                    }
                    SpriteView(scene: scene)
                        .frame(width: 900, height: 400)
                        .ignoresSafeArea()
                }
            
        }
    }
}

struct AboutLP_Previews: PreviewProvider {
    static var previews: some View {
        AboutLP()
    }
}
