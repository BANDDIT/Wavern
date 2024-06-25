//
//  FilterButton.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

struct FilterButton: View {
   var text: String
   var action: () -> Void
   
   var body: some View {
      Button(action: {
         action()
      }, label: {
         HStack {
            Text(text)
               .padding(.horizontal, 8)
               .font(Fonts.medium13)
            
            Image(systemName: "chevron.down")
         }
         .padding([.vertical, .trailing], 12)
         .overlay {
            RoundedRectangle(cornerRadius: 12)
               .stroke(.black, lineWidth: 0.2)
         }
         .foregroundStyle(.black)
      })
   }
}

#Preview {
   FilterButton(text: "Role", action: {})
}
