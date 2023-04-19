//
//  Explanation.swift
//  NightSky
//
//  Created by Gabriel Dias Goncalves on 18/04/23.
//

import SwiftUI

struct Explanation: View {
    var body: some View {
        ZStack{
            Color(UIColor(named: "ColorBack")!)
                .ignoresSafeArea()
            VStack(){
                Text("The stars are far away and the light that gets to us is weak so lots of artificial lights together pointed Up  with the wrong type of light  make the city  the worst place to see the stars, we call that light polution.")
                    .font(.custom("Marker Felt", size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("So…how can we solve it?")
                    .font(.custom("Marker Felt", size: 50))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                  
                NavigationLink(destination: fourthPuzzle()) {
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
}

struct Explanation_Previews: PreviewProvider {
    static var previews: some View {
        Explanation()
    }
}
