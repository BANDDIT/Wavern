//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
   @Binding var path: NavigationPath
   
   var body: some View {
      ScrollView{
         // MARK: Top Section (Details)
         HeaderView()
         
         // MARK: Challenge Box & Talents List
         ChallengeView()
         
         Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 4)
            .foregroundStyle(.neutral)
         
         ExploreTalentsView(path: $path)
              .environment(ModelData())
      }
      .background(Colors.white)
      .ignoresSafeArea()
   }
}

#Preview {
   NavigationStack {
      DashboardView(path: .constant(NavigationPath()))
   }
}
