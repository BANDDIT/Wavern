//
//  AllTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct AllTalentsView: View {
    @Environment(ModelData.self) private var modelData
    @Environment(\.dismiss) var dismiss
    @Binding var path: NavigationPath
    var userList: [Talent]{
        modelData.talentList
    }
    var userSkill:[TalentSkill]{
        modelData.talentSkill
    }
    
    var body: some View {
        TalentLabelView(path: $path)
        
        ScrollView{
            VStack {
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
                            path.append(Destination.talentDetailView)
                        }
                }
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        AllTalentsView(path: .constant(NavigationPath()))
            .environment(ModelData())
    }
}
