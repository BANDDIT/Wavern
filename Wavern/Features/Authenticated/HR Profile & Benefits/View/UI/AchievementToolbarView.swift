//
//  AchievementToolbarView.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

struct AchievementToolbarView:View{
   @Binding var path: NavigationPath
   var body : some View{
      VStack(alignment:.leading){
         Spacer()
         HStack{
            Image(systemName:"arrow.backward")
               .foregroundColor(Colors.white)
               .padding(.trailing,Size.padding8)
               .font(Fonts.semibold16)
               .onTapGesture {
                  path.removeLast()
               }
            
            Text("Your Achievement").foregroundColor(Colors.white).font(Fonts.semibold16)
            Spacer()
         }
         .padding([.leading,.bottom],Size.padding24)
      }
   }
}

#Preview {
   AchievementToolbarView(path: .constant(NavigationPath()))
      .background(.black)
}
