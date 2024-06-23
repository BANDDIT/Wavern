//
//  AchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct RewardsView: View {
   @Environment(\.dismiss) var dismiss
   
   var body: some View {
      
      VStack(alignment: .leading){
         VStack(alignment: .leading){
            HStack {
               Button(action: {
                  dismiss()
               }, label: {
                  Image(systemName: "arrow.left")
                  Text("Wavern Rewards")
                     .font(.headline)
               })
               .foregroundStyle(.white)
               
               Spacer()
            }
            
            VStack(alignment: .leading, spacing: 20) {
               Text("Jesslyn Devaline")
                  .font(.headline)
                  .foregroundStyle(.white)
               
               HStack {
                  Text("100 Points")
                     .font(.subheadline)
                     .foregroundStyle(.white)
                  
                  Image(systemName: "chevron.right")
                     .foregroundStyle(.white)
               }
               
               ProgressView(value: 100)
                  .tint(.yellow)
            }
            .padding(.vertical)
         }
         .padding()
         .padding(.top, 60)
         .background(
            Background.bgGradient
         )
         .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))
         
         Text("Certification")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(.neutral600)
            .padding()
         
         VStack {
            VStack(alignment: .leading) {
               Text("Human Resource Associate")
                  .padding()
               
               HStack{
                  Text("100 Points")
                     .font(.headline)
                     .foregroundStyle(.white)
                  
                  Spacer()
                  
                  Button(action: {
                     
                  }, label: {
                     Text("Exchange")
                        .foregroundStyle(Colors.purple600)
                        .font(.headline)
                        .padding(.horizontal, 24)
                        .padding(.vertical, 8)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                  })
               }
               .padding()
               .background(
                  Background.bgGradient
               )
            }
            .background(Colors.white)
            .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
            .overlay {
               RoundedRectangle(cornerRadius: Size.cornerRadius)
                  .stroke(.black.opacity(0.1))
            }
            .padding()
         }
      }
      .ignoresSafeArea()
      
      Spacer()
   }
}

#Preview {
   RewardsView()
}
