//
//  Library.swift
//  Apple music
//
//  Created by Serena Simeone on 15/11/23.
//

import SwiftUI

struct CategoryListView: View {
    
    var viewModel: CategoryViewModel
    var albumVM: AlbumViewModel
    
    var body: some View {
        
        NavigationView {
            NavigationStack {
                VStack(alignment: .leading, spacing: -110) {
                    
                    List {
                        ForEach(viewModel.category) { category in
                            
                            HStack {
                                Image(systemName: category.systemName)
                                    .foregroundColor(.red)
                                
                                Text(category.name)
                            }
                            
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                    
                    .navigationBarItems(leading:
                        HStack (spacing: 200) {
                            Text("Library")
                                .font(.largeTitle)
                                .fontWeight(.bold)

                            Image(systemName: "person.crop.circle")
                                .foregroundColor(.red)
                                .imageScale(.large)
                                .font(.system(size: 20))
                                .offset(x:20)
                        }
                    )

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
                            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                            .overlay{
                                NavigationLink(destination: prova()){
                                    
                                    Bottone()
                                }
                                }
                                
                                
                                
                            }
                    }
                }
                
               
                
                
            }
            
        }
        
    }
}


#Preview {
    CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
    
}



