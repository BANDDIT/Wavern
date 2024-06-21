//
//  AchievementCardView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct AchievementCardView: View {
    var body: some View {
       ZStack(alignment: .bottomLeading){
          Image("achievement_card")
             .scaledToFit()
          
          VStack(alignment: .leading) {
             Text("First Journey")
                .font(.headline)
                .foregroundStyle(.white)
             Text("+100 Points")
                .font(.caption)
                .foregroundStyle(.white)
                .fontWeight(.semibold)
                .padding(.vertical, 4)
                .padding(.horizontal, 8)
                .background(.white.opacity(0.25))
                .clipShape(RoundedRectangle(cornerRadius: 12))
          }
          .padding()
       }
    }
}

#Preview {
    AchievementCardView()
}
