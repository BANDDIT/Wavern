//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
    @Binding var path: NavigationPath
    @Binding var progress: Double // Bind to the progress state
    
    var body: some View {
        ScrollView {
            // MARK: Top Section (Details)
            HeaderView()
            
            // MARK: Challenge Box & Talents List
            ChallengeView(progress: $progress) // Pass the progress binding
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 4)
                .foregroundStyle(.neutral)
            
            ExploreTalentsView(path: $path)
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
