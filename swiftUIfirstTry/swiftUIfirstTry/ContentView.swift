//
//  ContentView.swift
//  swiftUIfirstTry
//
//  Created by James Pillow on 09/05/2020.
//  Copyright © 2020 James Pillow. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    
    @State private var numHearts = 999
    
    var body: some View {
        
        ZStack
        {
            
            // Get the image for the background
            Image("Breakfast")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fill)
            
            VStack {
                Image("TopGradient")
                    .padding(.top,-5)
                Spacer()
                Image("BottomGradient")
            }
            
            VStack {
                HStack {
                    Text("Hardcore\nAvo Toast")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.top, 50.0)
                        .padding(.leading,25)
                    Spacer()
                    Image("Heart_health")
                        .padding(.top, 50.0)
                        .padding(.trailing,25)
                }
                
                Spacer()
                HStack {
                    Text("Energize with this healthy and hearty breakfast")
                        .foregroundColor(Color.white)
                        .padding(.bottom,50)
                        .padding(.leading,25)
                    Spacer()
                }
            }

            HStack {
                Button(action: {
                    self.isHearted.toggle()
                }) {
                    if isHearted {
                        VStack {
                            Spacer()
                            Image(systemName: "heart.fill")
                                .background(Color.white)
                                .padding(.top,-150)
                        }
                    }
                    else {
                        VStack {
                            Spacer()
                            Image(systemName: "heart")
                                .background(Color.white)
                                .padding(.top,-150)
                        }
                    }
                }
                Text("poo")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

