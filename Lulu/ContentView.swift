//
//  ContentView.swift
//  Lulu
//
//  Created by A Giobbi on 1/17/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color(red: 238, green: 0.55, blue: 0.66).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Lulu")
                        .font(Font.custom("Borel-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Button(action: {treatSound(soundName: "treats")}, label: {
                        Image("luluPaw")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    })
                    Text("Treat Now!")
                        .font(Font.custom("Borel-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(.all)
            }
            
        }
        
    }
}

func treatSound(soundName: String) {
    var player: AVAudioPlayer!
    let url = Bundle.main.url(forResource: soundName, withExtension: "m4a")
    player = try! AVAudioPlayer(contentsOf: url!)
    player.play()
}



#Preview {
    ContentView()
}
