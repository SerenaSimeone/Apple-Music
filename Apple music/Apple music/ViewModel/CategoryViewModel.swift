//
//  Categoryviewmodel.swift
//  Apple music
//
//  Created by Serena Simeone on 15/11/23.
//

import SwiftUI

class CategoryViewModel {
    
    var category = [
        Category(systemName: "music.note.list", name: "Playlists"),
        Category(systemName: "music.mic", name: "Artists"),
        Category(systemName: "square.stack", name: "Albums"),
        Category(systemName: "music.note", name: " Songs"),
        Category(systemName: "guitars", name: "Genres"),
        Category(systemName: "music.quarternote.3", name: "Composers")
        
    ]
}
