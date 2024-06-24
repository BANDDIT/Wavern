//
//  WavernApp.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 06/06/24.
//

import SwiftUI

@main
struct WavernApp: App {
    @StateObject private var user = UserModel()
    @State private var modelData = ModelData()
    var body: some Scene {
        
        WindowGroup {
            OnboardingView()
                .environment(modelData)
            OnboardingView()
                .environmentObject(user)
        }
    }
}
