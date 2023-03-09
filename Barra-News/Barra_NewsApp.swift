//
//  Barra_NewsApp.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import SwiftUI

@main
struct Barra_NewsApp: App {
    
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
