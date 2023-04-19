//
//  Conclusion.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 19/04/23.
//

import SwiftUI

struct Conclusion: View {
    var body: some View {
        ZStack{
            Color(UIColor(named: "ColorBack")!)
                .ignoresSafeArea()
            VStack(){
                Text("Spreading the word and adjusting what you can in your house will help us see it all again, let's do it!")
                    .font(.custom("Marker Felt", size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("The stars are ours to admire and they remind us that we are part of something bigger, they remind us to look up.")
                    .font(.custom("Marker Felt", size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .navigationBarBackButtonHidden()
//                NavigationLink(destination: fourthPuzzle()) {
//                    Text("next")
//                        .navigationBarBackButtonHidden()
//                        .font(.custom("Marker Felt", size: 50))
//                        .foregroundColor(.white)
//                        .multilineTextAlignment(.center)
//                        .font(.largeTitle)
//                }
            }
        }
    }
}

struct Conclusion_Previews: PreviewProvider {
    static var previews: some View {
        Conclusion()
    }
}
