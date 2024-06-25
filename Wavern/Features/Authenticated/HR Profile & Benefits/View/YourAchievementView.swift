//
//  YourAchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

struct YourAchievementView: View {
   @Binding var path: NavigationPath
   
   @StateObject var yourAchievementViewModel:YourAchievementViewModel = YourAchievementViewModel()
   
   var body : some View {
      ZStack{
         Background.bgGradient
         VStack{
            AchievementToolbarView(path: $path)
               .frame(width:UIScreen.screenWidth,height:128)
            
            ScrollView(showsIndicators: false){
               ForEach(yourAchievementViewModel.getDummyAchievement(),id:\.id){achievement in
                  YourAchievementItem(achievement:achievement).padding(.bottom,Size.padding16)
               }
               Spacer()
            }
            
         }
      }
      .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      .navigationBarBackButtonHidden(true)
      
   }
}

#Preview {
   YourAchievementView(path: .constant(NavigationPath()))
}
