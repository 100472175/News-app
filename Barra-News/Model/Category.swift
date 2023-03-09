//
//  Base.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 8/3/23.
//

import Foundation
import SwiftUI

struct Category: Codable, Hashable, Identifiable {
    var id: Int
    var title: String
    //var image: String
    
    var imageName: String
    var image: Image {
        Image(systemName: imageName)
    }
}
