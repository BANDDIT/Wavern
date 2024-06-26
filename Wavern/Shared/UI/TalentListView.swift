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
   @State var counts = 0
   
   var body: some View {
      //        NavigationStack {
      //            NavigationLink {
      //                TalentProfileView(path: navi)
      //            } label: {
      HStack{
         ZStack(alignment: .topLeading){
            Image("DummyTalentsProfile")
               .resizable()
               .scaledToFill()
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
            HStack{
               ForEach(0..<user.Skills.count){index in
                  if index < 2 {
                     CustomSkillTag(user.Skills[index])
                        .onAppear(perform: {
                           counts -= 1
                        })
                  }
               }
               
               if counts > 0{
                  CustomSkillTag("\(counts)+")
               }
            }
         }
         
         Spacer()
      }
      .onAppear(perform: {
         counts = user.Skills.count
      })
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
      Interview_Count: 1, Skills: [""], Links: [""]
   ))
   .environment(ModelData())
}
