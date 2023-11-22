//
//  Listsong.swift
//  Apple music
//
//  Created by Serena Simeone on 21/11/23.
//

import SwiftUI

struct Listsong: View {
    
    let song: Song
    
    var body: some View {
        
        
        
        
        ZStack{
            
            HStack{
                HStack {
                    Image(song.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                        .cornerRadius(7)
                        .shadow(radius: 10)
                        .padding(.leading, -80)
                    
                    VStack (alignment: .leading) {
                        Text(song.title)
                            .bold()
                        
                        
                        Text(song.artist)
                            .font(.system(size: 18))
                            .opacity(0.5)
                    }
                } 
                .padding(.horizontal, 60)
                
            
                
               
                
                                
                    Image(systemName:"line.3.horizontal")
                        .opacity(0.5)
                        .offset(x:30)
                        .font(.system(size: 20))
                
                    
               
                
            }
            
            
            
        }
       
        
    }
}

    #Preview {
        
        let song = Song(title: "Sharks", image: "mercury", artist: "Imagine Dragons", categoryColor: .red)
        
        
        
        
        
        return Listsong(song: song)
    }


