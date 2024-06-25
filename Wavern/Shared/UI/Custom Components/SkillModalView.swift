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
         
         let columns = [
            GridItem(.flexible(), spacing: 1),
            GridItem(.flexible(), spacing: 2),
            GridItem(.flexible(), spacing: 1)
         ]
         
         LazyVGrid(columns: columns) {
            SkillFilterView()
            SkillFilterView()
            SkillFilterView()
            SkillFilterView()
            SkillFilterView()
            SkillFilterView()
         }
         .padding(.bottom)
         
         CustomButtons(text: "Save", bgColor: Colors.purple600, txtColor: Colors.white, height: 44, action: {})
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}

#Preview {
   SkillModalView()
}
