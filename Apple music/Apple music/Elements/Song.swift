//
//  Songs.swift
//  Apple music
//
//  Created by Serena Simeone on 21/11/23.
//

import Foundation
import SwiftUI
struct Song: Identifiable {
    
    var id = UUID()
    var title: String
    var image: String
    var artist: String
    var categoryColor: Color = .black
}
