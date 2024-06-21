//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
   let increments = [150, 250, 350, 450]
   
   var body: some View {
      ScrollView{
         // MARK: Top Section (Details)
         HeaderView()
         
         // MARK: Challenge Box & Talents List
         ChallengeView()
         
         Rectangle()
            .frame(width: 393, height: 4)
            .foregroundStyle(.neutral)
         
         ExploreTalentsView()
      }
      .background(Colors.white)
      .ignoresSafeArea()
   }
}

#Preview {
   NavigationStack {
      DashboardView()
   }
}
