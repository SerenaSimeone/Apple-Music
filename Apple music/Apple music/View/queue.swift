//
//  queue.swift
//  Apple music
//
//  Created by Serena Simeone on 21/11/23.
//

import SwiftUI

struct queue: View {
    var viewModel: SongViewModel
    
    
    var body: some View {
        
       
        
            VStack {
                SongView()
                // Header
                HStack {
                    VStack(alignment: .leading){
                        Text("Playing Next")
                            .bold()
                        
                        Text("From Mercury - Act 1 & 2")
                            .opacity(0.5)
                    }
                    .padding()
                    
                    HStack{
                        Image(systemName: "shuffle")
                            .opacity(0.5)
                            .offset(x:25)
                            .font(.system(size: 20))
                        
                        Image(systemName: "repeat")
                            .opacity(0.5)
                            .offset(x:25)
                            .font(.system(size: 20))
                        
                        Image(systemName: "infinity")
                            .opacity(0.5)
                            .offset(x:25)
                            .font(.system(size: 20))
                    }
                    .offset(x:20)
                }
                .offset(x:-30)
                
                // Lista di canzoni
                List {
                    ForEach(viewModel.song) { song in
                        Listsong(song: song)
                    }
                }
                
             

                playview()
            }
            
        
        
  
          


        
        }
    
    }
#Preview {
    queue(viewModel: SongViewModel())
}
