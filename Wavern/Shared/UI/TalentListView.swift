//
//  TalentListView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import Foundation
import SwiftUI

struct TalentListView: View {
    @Environment(ModelData.self) private var modelData
    let corners: UIRectCorner = [.topLeft, .bottomRight]
    var user: Talent
    var skill: TalentSkill
    
    var body: some View {
                HStack{
                    ZStack(alignment: .topLeading){
                        Image("DummyTalentsProfile")
                            .resizable()
                            .frame(width: 104, height: 140)
                        
                        CustomEmploymentType(corners: corners, type: .full_time)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    VStack(alignment: .leading){
                        VStack(alignment: .leading) {
                            Text(user.User_Nama)
                                .font(Fonts.semibold16)
                            
                            Text(user.Role)
                                .font(Fonts.regular14)
                                .opacity(0.5)
                        }
                        
                        VStack(alignment: .leading) {
                            DescriptionView(userExp: user.Experience, offering: user.Offering, willingToRelocate: user.Willing_To_relocate)
                        }
                        .padding(.vertical, 4)
                        
                        ScrollView(.horizontal){
                            HStack{
                                CustomSkillTag(skill.Skill1)
                                CustomSkillTag(skill.Skill2)
                                CustomSkillTag(skill.Skill3)
                                CustomSkillTag(skill.Skill4)
                                CustomSkillTag(skill.Skill5)
                                CustomSkillTag(skill.Skill6)
                            }
                        }
                    }
                    
                    Spacer()
                }
//            }
        }
//    }
}

#Preview {
    TalentListView(user: Talent(
        User_Nama: "justin",
        User_Email: "justinmail",
        User_Password: "password",
        User_Description: "desc",
        Role: "role", Experience: 1,
        Offering: 1000,
        Willing_To_relocate: "yes",
        Interview_Count: 1
    ), skill: TalentSkill(User_Nama: "justin", Skill1: "skill1", Skill2: "skill1", Skill3: "skill1", Skill4: "skill1", Skill5: "skill1", Skill6: "skill1"))
    .environment(ModelData())
}
