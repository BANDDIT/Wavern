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
    
    var body: some View {
        ScrollView {
            HeaderView()
            ChallengeView(progress: $progress)
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

