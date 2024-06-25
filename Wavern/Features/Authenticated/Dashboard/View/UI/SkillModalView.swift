//
//  SkillModalView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct SkillModalView: View {
   var body: some View {
      VStack(alignment: .leading, spacing: 12){
         Text("Skills")
            .font(Fonts.semibold20)
            .foregroundStyle(.black)
            .padding(.vertical)
         
         HStack{
            Text("UX Research")
               .font(Fonts.medium12)
            
            Image(systemName: "plus")
               .imageScale(.small)
         }
         .padding(12)
         .foregroundStyle(Colors.neutral600)
         .clipShape(RoundedRectangle(cornerRadius: 25))
         .overlay{
            RoundedRectangle(cornerRadius: 25)
               .stroke(Colors.neutral200, lineWidth: 1)
         }
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}

#Preview {
   SkillModalView()
}
