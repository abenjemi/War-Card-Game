//
//  ContentView.swift
//  WarGame
//
//  Created by Amine Ben Jemia on 9/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var leftCard = Int.random(in: 2...14)
    @State var rightCard = Int.random(in: 2...14)
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("card\(leftCard)")
                    
                    Spacer()
                    
                    Image("card\(rightCard)")
                    
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    dealButtonTapped()
                } label: {
                    Image("dealbutton")
                        .resizable()
                        .frame(width: 120, height: 40)
                }
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .padding()
                        
                        Text("\(playerScore)")
                            .padding()
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding()
                        
                        Text("\(cpuScore)")
                            .padding()
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .font(.system(size: 25))
                
                Spacer()
            }
        }
    }
    
    func dealButtonTapped() {
        leftCard = Int.random(in: 2...14)
        rightCard = Int.random(in: 2...14)
        
        if leftCard > rightCard {
            playerScore += 1
        } else if rightCard > leftCard {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
