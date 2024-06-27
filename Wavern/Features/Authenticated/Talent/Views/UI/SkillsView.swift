//
//  SkillsView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct SkillsView: View {
    
    var skills:[String]=["UI/UX Design","Research","Product Thinking","Prototyping","Product Strategy","Interaction Design"]
    
   var body: some View {
      VStack(alignment: .leading) {
         Text("Skills")
            .font(Fonts.semibold16)
            .padding(.vertical, 8)
         
         HStack{
             CustomSkillTag("\(skills[0])",text_font:Fonts.medium13)
             CustomSkillTag("\(skills[1])",text_font:Fonts.medium13)
             CustomSkillTag("\(skills[2])",text_font:Fonts.medium13)
         }
         
         HStack{
             CustomSkillTag("\(skills[3])",text_font:Fonts.medium13)
             CustomSkillTag("\(skills[4])",text_font:Fonts.medium13)
             CustomSkillTag("\(skills[5])",text_font:Fonts.medium13)
         }
      }
   }
}

#Preview {
   SkillsView()
}
