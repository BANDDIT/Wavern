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
               .font(Fonts.semibold16)
               .foregroundStyle(Colors.white)
            Text("+100 Points")
               .font(Fonts.medium13)
               .foregroundStyle(.white)
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
