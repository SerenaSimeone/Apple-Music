//
//  Apple_musicApp.swift
//  Apple music
//
//  Created by Serena Simeone on 15/11/23.
//

import SwiftUI

@main
struct Apple_musicApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
                    .tabItem {
                        Image(systemName: "play.circle.fill")
                        Text("Listen Now")
                    }

                CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
                    .tabItem {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Browse")
                    }

                CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Radio")
                    }

                CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
                    .tabItem {
                        Image(systemName: "play.square.stack.fill")
                        Text("Library")
                    }

                CategoryListView(viewModel: CategoryViewModel(), albumVM: AlbumViewModel())
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
            .tint(.red)
        }
    }
}
