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
               
               Text("100 Points")
                  .font(.subheadline)
                  .foregroundStyle(.white)
               
               ProgressView(value: 100)
                  .tint(.yellow)
            }
            .padding(.vertical)
         }
         .padding()
         .padding(.top, 60)
         .background(
            LinearGradient(
               stops: [
                  Gradient.Stop(color: .primaryPurple, location: 0.00),
                  Gradient.Stop(color: .secondaryPurple, location: 1.00),
               ],
               startPoint: UnitPoint(x: 0.5, y: 0),
               endPoint: UnitPoint(x: 0.5, y: 1)
            )
         )
         .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))
      }
      .ignoresSafeArea()
      
      Spacer()
   }
}

#Preview {
   RewardsView()
}
