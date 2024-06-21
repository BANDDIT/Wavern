//
//  SkillTag.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct SkillTag: View {
   var text: String
   
   init(_ text: String){
      self.text = text
   }
   
   var body: some View {
      VStack{
         Text(text).foregroundColor(.primaryPurple)
            .font(Fonts.medium10)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
      }
      .background(.purple100)
      .clipShape(RoundedRectangle(cornerRadius: 12))
      
   }
}

#Preview {
   SkillTag("Hello")
}
