//
//  SkillFilterView.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

struct SkillFilterView: View {
    var body: some View {
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
}

#Preview {
    SkillFilterView()
}
