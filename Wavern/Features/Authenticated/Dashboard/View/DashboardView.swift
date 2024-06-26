//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
   @Binding var path: NavigationPath
   @Binding var progress: Double
   @Binding var talent: Talent?
   
   var body: some View {
      ScrollView{
         // MARK: Top Section (Details)
         HeaderView()
         
         // MARK: Challenge Box & Talents List
         ChallengeView(progress: $progress)
         
         Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 4)
            .foregroundStyle(.neutral)
         
         ExploreTalentsView(path: $path, talent: $talent)
            .environment(ModelData())
            .padding(.bottom, 4)
      }
      .background(Colors.white)
      .ignoresSafeArea()
   }
}

#Preview {
   NavigationStack {
      DashboardView(path: .constant(NavigationPath()), progress: .constant(0.0), talent: .constant(Talent(User_Nama: "Hello", User_Email: "Hello", User_Password: "Hello", User_Description: "Hello", Role: "Hello", Experience: 1, Offering: 1, Willing_To_relocate: "Hello", Interview_Count: 1, Skills: ["", "", ""], Links: [""])))
   }
}
