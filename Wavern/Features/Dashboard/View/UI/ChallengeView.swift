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
                     .font(.headline)
                     .foregroundStyle(.white)
                  Text("Reach out your first talent")
                     .font(.subheadline)
                     .foregroundStyle(.white)
                  Text("+100 Points")
                     .font(.subheadline)
                     .padding(3)
                     .padding(.horizontal, 8)
                     .foregroundStyle(.white)
                     .background(.white.opacity(0.2))
                     .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               
               Spacer()
            }
            .padding(.horizontal, 21)
         }
         .frame(width: 345, height: 112)
      }
      .padding(.top, 24)
      .padding(.bottom, 20)
   }
}

#Preview {
   ChallengeView()
}
