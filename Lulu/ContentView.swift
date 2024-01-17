//
//  ContentView.swift
//  Lulu
//
//  Created by A Giobbi on 1/17/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    @State var audioPlayer: AVAudioPlayer?
    
    var body: some View {
        VStack {
            ZStack {
                Color(red: 238, green: 0.55, blue: 0.66).edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Lulu")
                        .font(Font.custom("Borel-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Button(action: {playSound(soundTitle: "treatAudio")}, label: {
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
    
    func playSound(soundTitle: String){
        if let url = Bundle.main.url(forResource: soundTitle, withExtension: "wav") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                print("Error trying to play audio")
            }
        }
    }
}


#Preview {
    ContentView()
}
