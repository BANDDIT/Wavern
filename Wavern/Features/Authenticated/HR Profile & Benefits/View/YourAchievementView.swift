//
//  YourAchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 26/06/24.
//

import SwiftUI

struct YourAchievementView: View {
   var body: some View {
      VStack(alignment: .leading){
         HStack{
            Image(systemName: "arrow.left")
            Text("Your Achievement")
               .font(Fonts.semibold16)
         }
         .foregroundStyle(Colors.white)
         .padding(.horizontal)
         .padding(.top, 60)
         .frame(maxWidth: .infinity, alignment: .leading)
         
         Spacer()
      }
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(Background.bgGradient)
   }
}

#Preview {
   YourAchievementView()
}
