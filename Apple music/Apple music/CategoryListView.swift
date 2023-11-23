//
//  Library.swift
//  Apple music
//
//  Created by Serena Simeone on 15/11/23.
//

import SwiftUI

struct CategoryListView: View {
    
    @State private var isModalPresented = false
    
    var viewModel: CategoryViewModel
    var albumVM: AlbumViewModel
    
    
    var body: some View {
        
        NavigationView {
            
            
                    VStack {
                     
                        HStack {
                            Text("Library")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .offset(x:-100)
                            
                            Image(systemName: "person.crop.circle")
                                .foregroundColor(.red)
                                .imageScale(.large)
                                .font(.system(size: 20))
                                .offset(x:100)
                        }
                        .padding()
                        
                       
                        List {
                            ForEach(viewModel.category) { category in
                                HStack {
                                    Image(systemName: category.systemName)
                                        .foregroundColor(.red)
                                    Text(category.name)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .opacity(0.5)
                                        
                                }
                            }
                        }
                        
                    }
                    .navigationTitle("")
                }
                
                
                VStack(alignment: .leading, spacing: -15) {
                    Text("Recently Added")
                        .bold()
                        .font(.title2)
                        .padding()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 50),
                                            GridItem(.flexible())]) {
                            ForEach(albumVM.albums) { album in
                                AlbumView(album: album)
                                    .frame(height: 230)
                            }
                        }
                                            .padding(.leading, 85)
                                            .padding(.trailing, -25)
                    }
                    
                    HStack{
                        Spacer()
                            .frame(height: 100)
                            .overlay {
                                Bottone()
                                    .onTapGesture {
                                        isModalPresented.toggle()
                                    }
                                    .sheet(isPresented: $isModalPresented) {
                                        prova()
                                    }
                            }
                        
                    }
                }
        
            }
    
        }
        
    
    

#Preview {
    CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
    
}



