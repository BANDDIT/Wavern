//
//  ChallengeView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct ChallengeView: View {
   var body: some View {
      VStack(alignment: .leading) {
         Text("Your Challenge")
            .font(Fonts.semibold20)
            .foregroundStyle(Colors.neutral600)
         
         ZStack{
            Image("challenge_bg")
            
            HStack{
               Image("gold_star")
                  .padding(.trailing)
               
               VStack(alignment: .leading){
                  Text("First Journey")
                     .font(Fonts.semibold16)
                     .foregroundStyle(Colors.white)
                  
                  Text("Reach out your first talent")
                     .font(Fonts.regular13)
                     .foregroundStyle(Colors.white)
                  
                  Text("+100 Points")
                     .font(Fonts.medium13)
                     .padding(3)
                     .padding(.horizontal, Size.padding8)
                     .foregroundStyle(Colors.white)
                     .background(Colors.white.opacity(0.2))
                     .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
               }
               
               Spacer()
            }
            .padding(.horizontal, Size.padding24)
         }
         .frame(width: 345, height: 112)
      }
      .padding(.vertical, Size.padding24)
   }
}

#Preview {
   ChallengeView()
}
