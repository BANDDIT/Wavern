//
//  AchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct AchievementView: View {
   @Binding var path: NavigationPath
   
   var body: some View {
      VStack(alignment: .leading){
         Text("Achievement")
            .font(Fonts.semibold20)
            .foregroundStyle(Colors.neutral600)
            .padding(.vertical)
         
         VStack {
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
            .padding(.bottom, 4)
            
            CustomButtons(text: "View All", bgColor: Colors.purple600, txtColor: Colors.white, height: 44, action: {})
         }
         .padding()
         .overlay {
            RoundedRectangle(cornerRadius: 12)
               .stroke(Colors.neutral200, lineWidth: 1)
         }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
   }
}

#Preview {
   AchievementView(path: .constant(NavigationPath()))
}
