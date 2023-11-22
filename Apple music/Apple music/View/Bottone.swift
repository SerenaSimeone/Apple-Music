//
//  prova.swift
//  Apple music
//
//  Created by Serena Simeone on 20/11/23.
//

import SwiftUI

struct Bottone: View {
    var body: some View {

        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.2)
                .frame(width: 370, height: 55)
                .cornerRadius(15)
            HStack{
                Image("mercury")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
                    .cornerRadius(7)
                   Text("Sharks")
                    .bold()
                    .foregroundColor(.white)
                    


                Image(systemName:"play.fill")
                    .offset(x:150)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                   

                Image(systemName:"forward.fill")
                    .offset(x:170)
                    .font(.system(size: 25))
                    .foregroundColor(.white)

            }.offset(x:-90)

        }
    }

}

#Preview {
    Bottone()
}
