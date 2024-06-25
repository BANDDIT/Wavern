//
//  ExploreTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct ExploreTalentsView: View {
    @Binding var path: NavigationPath
    @Environment(ModelData.self) private var modelData
    @Binding var talent: Talent?
    @Binding var skill: TalentSkill?
    
    var userList: [Talent]{
        modelData.talentList
    }
    var userSkill:[TalentSkill]{
        modelData.talentSkill
    }
    
    var body: some View {
        VStack{
            HStack {
                Text("Explore Talents")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Fonts.semibold20)
                    .foregroundStyle(Colors.neutral600)
                
                Text("See all")
                    .onTapGesture {
                        path.append(Destination.allTalentsView)
                    }
                    .foregroundStyle(.black.opacity(0.4))
                    .font(Fonts.regular14)
            }
            
//            FilterView
                .padding(.vertical, 8)
            
            //          TalentListView()
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(.black.opacity(0.1))
                }
                .foregroundStyle(.black)
                .onTapGesture {
                    path.append(Destination.talentDetailView)
                }
            
            ForEach(Array(zip(userList, userSkill)), id: \.0){user in
                TalentListView(user: user.0, skill: user.1)
                    .padding()
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.black.opacity(0.1))
                    }
                    .foregroundStyle(.black)
                    .onTapGesture {
                        talent = user.0
                        skill = user.1
                        
                        path.append(Destination.talentDetailView)
                    }
            }
        }
        .padding(.horizontal, 21)
        .padding(.top, 16)
    }
}

#Preview {
    ScrollView {
        ExploreTalentsView(path: .constant(NavigationPath()), talent: .constant(Talent(User_Nama: "Hello", User_Email: "Hello", User_Password: "Hello", User_Description: "Hello", Role: "Hello", Experience: 1, Offering: 1, Willing_To_relocate: "Hello", Interview_Count: 1)), skill: .constant(TalentSkill(User_Nama: "H", Skill1: "H", Skill2: "H", Skill3: "H", Skill4: "H", Skill5: "H", Skill6: "H")))
            .environment(ModelData())
    }
}
