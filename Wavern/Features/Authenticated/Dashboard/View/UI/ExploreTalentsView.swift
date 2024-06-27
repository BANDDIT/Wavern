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
   
   var userList: [Talent]{
       modelData.talentList.filter { $0.User_Nama.contains(searchQuery) || searchQuery.isEmpty }
   }

    var searchQuery:String
   
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
         
         ForEach(Array(userList).prefix(3), id: \.self){user in
            TalentListView(user: user)
               .padding()
               .background(.white)
               .clipShape(RoundedRectangle(cornerRadius: 12))
               .overlay {
                  RoundedRectangle(cornerRadius: 12)
                     .stroke(.black.opacity(0.1))
               }
               .foregroundStyle(.black)
               .onTapGesture {
                  talent = user
                  
                  path.append(Destination.talentDetailView)
               }
         }
      }
      .padding(.horizontal, 21)
      .padding(.top, 16)
   }
}
/*
#Preview {
   ScrollView {
      ExploreTalentsView(path: .constant(NavigationPath()), talent: .constant(Talent(User_Nama: "Hello", User_Email: "Hello", User_Password: "Hello", User_Description: "Hello", Role: "Hello", Experience: 1, Offering: 1, Willing_To_relocate: "Hello", Interview_Count: 1, Skills: [""], Links: [""])))
         .environment(ModelData())
   }
}*/
