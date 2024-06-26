//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
    @Binding var path: NavigationPath
    @Binding var progress: Double
    @State var searchQuery: String = "" // Add this line
    
    var body: some View {
        ScrollView {
            HeaderView(searchQuery: $searchQuery) // Pass searchQuery to HeaderView
            ChallengeView(progress: $progress)
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 4)
                .foregroundStyle(.neutral)
            
            ExploreTalentsView(path: $path, searchQuery: searchQuery) // Pass searchQuery to ExploreTalentsView
              .environment(ModelData())
        }
        .background(Colors.white)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationStack {
        DashboardView(path: .constant(NavigationPath()), progress: .constant(0.5))
    }
}


