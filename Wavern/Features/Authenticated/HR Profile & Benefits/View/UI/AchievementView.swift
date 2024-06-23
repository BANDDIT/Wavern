//
//  AchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct AchievementView: View {
   var body: some View {
      VStack(alignment: .leading){
         Text("Achievement")
            .font(Fonts.semibold20)
            .foregroundStyle(Colors.neutral600)
            .padding(.vertical)
         
         HStack(spacing: 16){
            Image("gold_star")
               .resizable()
               .frame(width: 54, height: 54)
            Image("gold_star")
               .resizable()
               .frame(width: 54, height: 54)
            Image("gold_star")
               .resizable()
               .frame(width: 54, height: 54)
         }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
   }
}

#Preview {
   AchievementView()
}
