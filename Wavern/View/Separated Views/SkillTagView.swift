//
//  SkillTagView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct SkillTagView: View {
   var text: String
   
   init(_ text: String){
      self.text = text
   }
   
   var body: some View {
      VStack{
         Text(text).foregroundColor(.primaryPurple)
            .font(.system(size: 12, weight: .medium))
            .padding(8)
      }
      .background(.purple100)
      .cornerRadius(82)
   }
}

#Preview {
   SkillTagView("UI/UX Designer")
}
