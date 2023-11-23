//
//  SongView.swift
//  Apple music
//
//  Created by Serena Simeone on 21/11/23.
//

import SwiftUI

struct SongView: View {
    var body: some View {
        ZStack{
            
            HStack{
                HStack{
                Image("mercury")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60)
                    .cornerRadius(7)
                    .shadow(radius: 10)
                
                    VStack (alignment: .leading) {
                        Text("Sharks")
                            .bold()
                            
                        
                        Text("Imagine Dragons")
                            .font(.system(size: 18))
                            .opacity(0.5)
                    }
                } .offset(x:-30)
                
                
                HStack(){
                    ZStack{
                        Image(systemName: "circle.fill")
                            .opacity(0.1)
                            .offset(x:25)
                            .font(.system(size: 20))
                        
                        Image(systemName:"star")
                            .opacity(0.5)
                            .offset(x:25)
                            .font(.system(size: 12))
                    }
                    
                    Image(systemName:"ellipsis.circle.fill")
                        .opacity(0.1)
                        .offset(x:30)
                        .font(.system(size: 20))
                    
                }.padding(.leading)
                   
            }
            
            

        }
    }

}


#Preview {
    SongView()
}
