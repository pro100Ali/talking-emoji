//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by ÐÐ»Ð¸  on 13.08.2022.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        
        VStack {
            Button{
                speak(text: "Happy programming")
            } label: {
                Text("âððâ¾ï¸").fontWeight(.bold).font(.system(.title, design: .rounded))

            }
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(20)
            
            Button{
                speak(text: "âSport")
            } label: {
                Text("âð¤¼â½ï¸â¾ï¸").fontWeight(.bold).font(.system(.title, design: .rounded))

            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
        .cornerRadius(20)
            
            Button{
                speak(text: "âArt")
            } label: {
                Text("âð¨ð´ââï¸ð").fontWeight(.bold).font(.system(.title, design: .rounded))

            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
        .cornerRadius(20)
        }
        

    }
        
    func speak(text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-GB")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
