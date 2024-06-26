//
//  CompletedChallenge.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct CompletedChallenge: View {
   var body: some View {
      ZStack{
         LinearGradient(
            colors:[.primaryPurple,.secondaryPurple],
            
            startPoint:.top,
            endPoint:.bottom
         )
         VStack{
            Spacer()
            Spacer()
            VStack{
               Text("Challenge")
                  .font(Fonts.semibold32)
                  .foregroundColor(.white)
               Text("Completed 🎉")
                  .font(Fonts.semibold32)
                  .foregroundColor(.white)
            }
            
            
            Spacer()
            Image("gold_star").resizable().frame(width:176,height:176)
            Spacer()
            VStack{
               Text("First Journey")
                  .foregroundColor(.white)
                  .font(.system(size:24,weight:.semibold))
                  .padding(.bottom,2)
               Text("Reach out your first talent")
                  .foregroundColor(.white)
                  .font(.system(size:16,weight:.medium))
                  .padding(.bottom,15)
               
               Text("+100 Points")
                  .foregroundColor(.white)
                  .font(.system(size:17,weight:.semibold))
                  .frame(width:117,height:40)
                  .background(Color.white.opacity(0.2))
                  .cornerRadius(51)
            }
            
            Spacer()
            Spacer()
            VStack{
               Button(action:{
                  
               },label:{
                  VStack{
                     Text("Back Home").foregroundColor(.primaryPurple).font(.system(size:17,weight:.semibold))
                  }.frame(width:361,height:56).background(.white).cornerRadius(12)
               })
               .padding(16)
               Spacer()
               
               VStack{
                  Text("")
               }.frame(width:120,height:5).background(.white).cornerRadius(5).padding(10).padding(.bottom,10)
            }.frame(maxWidth: .infinity, maxHeight:128).background(.clear)
         }
      }.ignoresSafeArea()
   }
}

#Preview {
   CompletedChallenge()
}
