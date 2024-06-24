//
//  CustomForm.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct CustomForm: View {
   var textTitle: String
   @Binding var textValue: String
   
   var body: some View {
      VStack {
         Text(textTitle)
            .font(Fonts.semibold14)
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity, alignment: .leading)
         
         TextField(text: $textValue) {
            Text(textTitle)
               .font(Fonts.regular14)
         }
         .padding()
         .background(.neutral)
         .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
      }
   }
}

#Preview {
   CustomForm(textTitle: "Email", textValue: .constant(""))
}
