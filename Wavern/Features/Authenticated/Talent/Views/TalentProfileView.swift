//
//  TalentProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TalentProfileView: View {
   @Binding var path: NavigationPath
   @State var isInvited: Bool = false
    @Environment(ModelData.self) private var modelData
    var user: Talent
    var skill: TalentSkill
   var viewModel = TalentViewModel()
   
   var body: some View {
      VStack(alignment: .center){
          TalentCardView(path: $path, user: Talent(
            User_Nama: "justin",
            User_Email: "justinmail",
            User_Password: "password",
            User_Description: "desc",
            Role: "role", Experience: 1,
            Offering: 1000,
            Willing_To_relocate: "yes",
            Interview_Count: 1
        ))
         
         VStack(alignment: .leading){
//            SkillsView()
//            .padding()
             
             VStack(alignment: .leading) {
                 Text("Skills")
                     .font(Fonts.semibold16)
                     .padding(.vertical, 8)
                 
                 HStack{
                     CustomSkillTag(skill.Skill1)
                     CustomSkillTag(skill.Skill2)
                     CustomSkillTag(skill.Skill3)
                 }
                 
                 HStack{
                     CustomSkillTag(skill.Skill4)
                     CustomSkillTag(skill.Skill5)
                     CustomSkillTag(skill.Skill6)
                 }
             }
            
            Rectangle()
               .frame(maxWidth: .infinity, maxHeight: 4)
               .foregroundStyle(Colors.neutral100)
            
            PortfolioViews()
            .padding([.horizontal, .bottom])
            
            Divider()
               .padding(.bottom, 8)
            
            HStack{
               CustomButtons(text: "Save Profile", bgColor: Colors.white, txtColor: Colors.purple600, height: 56, action: {})
                  .overlay {
                     RoundedRectangle(cornerRadius: 12)
                        .stroke(Colors.purple600, lineWidth: 1)
                  }
               
               CustomButtons(text: "Invite to Interview", bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {
                  withAnimation{
                     viewModel.feedbackPopUp(isInvited: $isInvited)
                  }
               })
            }
            .padding(.horizontal)
         }
         .frame(maxHeight: .infinity)
         .background(Colors.white)
      }
      .overlay(content: {
         if isInvited{
            SuccessFeedbackView()
         }
      })
      .background(Background.bgGradient)
   }
}



#Preview {
    TalentProfileView(path: .constant(NavigationPath()), user: Talent(
        User_Nama: "justin",
        User_Email: "justinmail",
        User_Password: "password",
        User_Description: "desc",
        Role: "role", Experience: 1,
        Offering: 1000,
        Willing_To_relocate: "yes",
        Interview_Count: 1
    ), skill: TalentSkill(User_Nama: "justin", Skill1: "skill1", Skill2: "skill1", Skill3: "skill1", Skill4: "skill1", Skill5: "skill1", Skill6: "skill1")).environment(ModelData())
}
