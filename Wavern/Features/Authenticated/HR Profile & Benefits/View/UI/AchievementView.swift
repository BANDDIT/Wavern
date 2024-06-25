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
         
         VStack(alignment: .center) {
            HStack(spacing: 12){
               Image("gold_star")
                  .resizable()
                  .frame(width: 54, height: 54)
               Image("gold_star")
                  .resizable()
                  .frame(width: 54, height: 54)
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
            
            CustomButtons(text: "View all", bgColor: Colors.purple600, txtColor: Colors.white, height: 44, action: {
               path.append(Destination.yourAchievementView)
            })
         }
         .padding()
         .overlay {
            RoundedRectangle(cornerRadius: 12)
               .stroke(.neutral200, lineWidth: 1)
         }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
   }
}

#Preview {
   AchievementView(path: .constant(NavigationPath()))
}
