//
//  playview.swift
//  Apple music
//
//  Created by Serena Simeone on 22/11/23.
//

import SwiftUI

struct playview: View {
    
    @State private var playbackProgress: Float = 0.5
    let totalDuration: Float = 191
    
    var body: some View {
        
        VStack {
                        Slider(value: $playbackProgress)
                            .padding(.horizontal, 20)
                            .accentColor(.white)
                            .opacity(0.5)
            
                          
            
                        HStack {
                            Text("0:00")
                                .bold()
                                .opacity(0.5)
                                .offset(x:-100)
                                .font(.system(size: 12))
                           
                            Text("Dolby Atmos")
                                .bold()
                                .opacity(0.5)
                                .font(.system(size: 12))
                            Text("\(formattedTime(from: totalDuration))")
                                .bold()
                                .opacity(0.5)
                                .offset(x:100)
                                .font(.system(size: 12))
                        }
                        .padding(.horizontal, 20)
                    }
       
        
        HStack{
            
            Image(systemName: "backward.fill")
                .offset(x:-50)
                .font(.system(size: 40))
            
            Image(systemName: "play.fill")
                .font(.system(size: 50))
            
            Image(systemName: "forward.fill")
                .offset(x:50)
                .font(.system(size: 40))
            
            
        }
        
        .padding(50)
        
        HStack {
                    Image(systemName: "speaker.fill")
                .opacity(0.5)
                    Slider(value: $playbackProgress, in: 0...1)
                        .accentColor(.white)
                        .opacity(0.5)
                       
            
                        Image(systemName: "speaker.wave.2.fill")
                    .opacity(0.5)
                }
                .padding(.horizontal, 20)
        
        HStack{
            
            
                        Image(systemName: "quote.bubble")
                    .opacity(0.5)
                    .offset(x:-50)
            
            Image(systemName: "airplayaudio")
        .opacity(0.5)
            
            Image(systemName: "list.bullet.circle.fill")
        .opacity(0.5)
        .offset(x:50)
        .font(.system(size: 25))
            
       
        
            
            
        } .padding(30)
        .font(.system(size: 20))
            
        
        
        
    }
    
    private func formattedTime(from seconds: Float) -> String {
            let minutes = Int(seconds) / 60
            let seconds = Int(seconds) % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
} 

#Preview {
    playview()
}
