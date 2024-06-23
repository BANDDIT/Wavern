//
//  ProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct ProfileView: View {
   @Binding var path: NavigationPath
   
   var body: some View {
      VStack(alignment: .leading) {
         ProfileHeaderView(path: $path)
         
         VStack(alignment: .leading) {
            Text("Your Challenge")
               .font(Fonts.semibold20)
               .foregroundStyle(.neutral600)
               .padding(.bottom)
            
            ScrollView(.horizontal, showsIndicators: false) {
               HStack{
                  // MARK: Nanti pake foreach
                  AchievementCardView()
                  AchievementCardView()
                  AchievementCardView()
               }
            }
         }
         .padding()
      }
      .ignoresSafeArea()
      
      Spacer()
      
   }
}

#Preview {
   ProfileView(path: .constant(NavigationPath()))
}
