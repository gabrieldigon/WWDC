//
//  SwiftUIView.swift
//  
//
//  Created by Gabriel Dias Goncalves on 16/04/23.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
            ZStack{
                Color(UIColor(named: "ColorBack")!)
                    .ignoresSafeArea()
                VStack(spacing: 300){
                    Text("The stars are beautiful!")
                        .font(.custom("Marker Felt", size: 50))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Unfortunately we can’t see them in the big city and some people don’t even know how the REAL sky looks like.")
                        .font(.custom("Marker Felt", size: 50))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("But Why that happens?")
                        .font(.custom("Marker Felt", size: 50))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                      
                    NavigationLink(destination: firsScene()) {
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

struct Introduction_Previews: PreviewProvider{
    static var previews: some View {
        Introduction()
    }
}
