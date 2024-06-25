//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
   @Binding var path: NavigationPath
   @Binding var talent: Talent?
   @Binding var skill: TalentSkill?
   @Binding var link: TalentPortofolio?
   
   var body: some View {
      ScrollView{
         // MARK: Top Section (Details)
         HeaderView()
         
         // MARK: Challenge Box & Talents List
         ChallengeView()
         
         Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 4)
            .foregroundStyle(.neutral)
         
         ExploreTalentsView(path: $path, talent: $talent, skill: $skill, links: $link)
            .environment(ModelData())
            .padding(.bottom, 4)
      }
      .background(Colors.white)
      .ignoresSafeArea()
   }
}

#Preview {
   NavigationStack {
      DashboardView(path: .constant(NavigationPath()), talent: .constant(Talent(User_Nama: "Hello", User_Email: "Hello", User_Password: "Hello", User_Description: "Hello", Role: "Hello", Experience: 1, Offering: 1, Willing_To_relocate: "Hello", Interview_Count: 1)), skill:.constant( TalentSkill(User_Nama: "Hello", Skill1: "Hello", Skill2: "Hello", Skill3: "Hello", Skill4: "Hello", Skill5: "Hello", Skill6: "Hello")), link: .constant(TalentPortofolio(User_Nama: "", Link1: "", Link2: "", Link3: "", Link4: "", Link5: "", Link6: "")))
   }
}
