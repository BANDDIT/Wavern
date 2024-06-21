//
//  TalentListView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct TalentListView: View {
   let corners: UIRectCorner = [.topLeft, .bottomRight]
   
   var body: some View {
      HStack{
         ZStack(alignment: .topLeading){
            Image("DummyTalentsProfile")
               .resizable()
               .frame(width: 104, height: 140)
            
            EmploymentTypeView(corners: corners, type: .full_time)
         }
         .clipShape(RoundedRectangle(cornerRadius: 12))
         
         VStack(alignment: .leading){
            VStack(alignment: .leading) {
               Text("Jesslyn Devaline")
                  .font(Fonts.semibold16)
               
               Text("Product Designer")
                  .font(Fonts.regular14)
                  .opacity(0.5)
            }
            
            VStack(alignment: .leading) {
               DescriptionView()
            }
            .padding(.vertical, 4)
            
            HStack{
               SkillTag("UI/UX Designer")
               SkillTag("Research")
               SkillTag("5+")
            }
         }
         
         Spacer()
      }
   }
}

#Preview {
   TalentListView()
}
