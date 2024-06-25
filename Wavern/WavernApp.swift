//
//  WavernApp.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 06/06/24.
//

import SwiftUI

@main
struct WavernApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        
        WindowGroup {
            MainView()
                .environment(modelData)
        }
    }
}
