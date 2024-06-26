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
   @State private var color: Color = .red
   @Binding var talent: Talent?
   
   var userList: [Talent]{
      modelData.talentList
   }
   
   var body: some View {
      TalentLabelView(path: $path)
      
      ScrollView{
         VStack {
            ForEach(Array(userList), id: \.self){user in
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
         .padding()
      }
   }
}

#Preview {
   NavigationStack {
      AllTalentsView(path: .constant(NavigationPath()), talent: .constant(Talent(User_Nama: "Hello", User_Email: "Hello", User_Password: "Hello", User_Description: "Hello", Role: "Hello", Experience: 1, Offering: 1, Willing_To_relocate: "Hello", Interview_Count: 1, Skills: [""], Links: [""])))
         .environment(ModelData())
   }
}
