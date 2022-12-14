//
//  ContentView.swift
//  SwiftUISimpleGame
//
//  Created by Dmitry Kononov on 2.10.22.
//

import SwiftUI
import CoreData

struct GameView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card6"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if playerRandom > cpuRandom {
                        playerScore += 1
                    }
                    if playerRandom < cpuRandom {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("\(playerScore)").font(.largeTitle)                          .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("\(cpuScore)").font(.largeTitle)                          .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
            .previewDevice("iPhone 12")
    }
}
