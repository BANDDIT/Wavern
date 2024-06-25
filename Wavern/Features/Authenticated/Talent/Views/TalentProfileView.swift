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
    @Binding var talent: Talent?
    @Binding var skill: TalentSkill?
    
    
    
    var viewModel = TalentViewModel()
    
    var body: some View {
        VStack(alignment: .center){
            if let talents = talent, let skills = skill {
                TalentCardView(path: $path, user: Talent(
                    User_Nama: talents.User_Nama,
                    User_Email: talents.User_Email,
                    User_Password: talents.User_Password,
                    User_Description: talents.User_Description,
                    Role: talents.Role, Experience: talents.Experience,
                    Offering: talents.Offering,
                    Willing_To_relocate: talents.Willing_To_relocate,
                    Interview_Count: talents.Interview_Count
                ))
                
                VStack(alignment: .leading){
                    //            SkillsView()
                    //            .padding()
                    
                    VStack(alignment: .leading) {
                        Text("Skills")
                            .font(Fonts.semibold16)
                            .padding(.vertical, 8)
                        
                        HStack{
                            CustomSkillTag(skills.Skill1)
                            CustomSkillTag(skills.Skill2)
                            CustomSkillTag(skills.Skill3)
                        }
                        
                        HStack{
                            CustomSkillTag(skills.Skill4)
                            CustomSkillTag(skills.Skill5)
                            CustomSkillTag(skills.Skill6)
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
    TalentProfileView(path: .constant(NavigationPath()), talent: .constant(Talent(
        User_Nama: "justin",
        User_Email: "justinmail",
        User_Password: "password",
        User_Description: "desc",
        Role: "role", Experience: 1,
        Offering: 1000,
        Willing_To_relocate: "yes",
        Interview_Count: 1
    )), skill: .constant(TalentSkill(User_Nama: "justin", Skill1: "skill1", Skill2: "skill1", Skill3: "skill1", Skill4: "skill1", Skill5: "skill1", Skill6: "skill1"))).environment(ModelData())
}
