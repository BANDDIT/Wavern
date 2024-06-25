//
//  YourAchievementItem.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

struct YourAchievementItem:View{
   
   var achievement:Achievement
   
   var body : some View{
      ZStack{
         Color.white
         ZStack{
            LinearGradient(colors:[Colors.purple300,Colors.purple600],startPoint:.top,endPoint:.bottom)
            HStack{
               Image(achievement.achievementAsset).resizable().frame(width:54,height:54).padding(.trailing,12)
               VStack(alignment:.leading){
                  Spacer()
                  Text(achievement.achievementTitle).foregroundColor(Colors.white).font(Fonts.semibold16)
                  Spacer()
                  Text(achievement.achievementDesc).foregroundColor(.white).font(Fonts.regular13).opacity(0.7)
                  Spacer()
               }
               Spacer()
            }.padding(Size.padding24)
         }
         .frame(width:350,height:87).cornerRadius(Size.cornerRadius)
         
      }.frame(width:353,height:90).cornerRadius(Size.cornerRadius)
   }
}

#Preview {
   YourAchievementItem(achievement: Achievement(title: "Hello", desc: "Hello", asset: "gold_star"))
}
