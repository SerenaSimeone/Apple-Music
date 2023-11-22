//
//  AlbumView.swift
//  Apple music
//
//  Created by Serena Simeone on 16/11/23.
//

import SwiftUI

struct AlbumView: View {
    
        let album: Album
        
        var body: some View {
            
            
            
                
                ZStack{
                
                    
                    
                    
                    VStack (alignment: .leading,spacing: 13) {
                        Image(album.imagealbum)
                            .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(13)
                        
                        VStack (alignment: .leading,spacing: 10){
                            Text(album.namealbum)
                                .font(.system(size: 18))
                            
                                .multilineTextAlignment(.leading)
                                .frame(height: 10)
                                .frame(width: 340, alignment: .leading)
                            
                            
                            Text(album.artist)
                                .font(.system(size: 18))
                                .opacity(0.5)
                        }
                    }
                    
                }
                .scaleEffect(0.8)
                

            
            
            }
            
            
          
    }

    #Preview {
        
        let album =  Album (namealbum: "Mercury - Acts 1 & 2", imagealbum: "mercury", artist: "Imagine Dragons")
        
        
        
        
        
        return AlbumView(album: album)
    }
