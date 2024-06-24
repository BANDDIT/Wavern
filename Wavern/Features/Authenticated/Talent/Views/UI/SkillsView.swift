//
//  SkillsView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct SkillsView: View {
   var body: some View {
      VStack(alignment: .leading) {
         Text("Skills")
            .font(Fonts.semibold16)
            .padding(.vertical, 8)
         
         HStack{
            CustomSkillTag("UI/UX Design")
            CustomSkillTag("Research")
            CustomSkillTag("Product Thinking")
         }
         
         HStack{
            CustomSkillTag("Prototyping")
            CustomSkillTag("Product Strategy")
            CustomSkillTag("Interaction Design")
         }
      }
   }
}

#Preview {
   SkillsView()
}
