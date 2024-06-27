//
//  SkillTag.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct CustomSkillTag: View {
   var text: String
    var text_font:Font = Fonts.medium10

   init(_ text: String){
      self.text = text
   }
   
    init(_ text: String,text_font:Font){
       self.text = text
        self.text_font = text_font
    }
    
    
    var body: some View {
      VStack{
         Text(text).foregroundColor(.primaryPurple)
            .font(text_font)
            .padding(.horizontal, 8)//8
            .padding(.vertical, 6)//4
      }
      .background(.purple100)
      .clipShape(RoundedRectangle(cornerRadius: 12))
      
   }
}

#Preview {
   CustomSkillTag("Hello")
}
