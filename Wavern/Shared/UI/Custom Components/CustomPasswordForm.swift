//
//  CustomPasswordForm.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct CustomPasswordForm: View {
   @Binding var visible: Bool
   var title: String
   @Binding var textValue: String
   
   var body: some View {
      VStack {
         Text("Password")
            .font(Fonts.semibold14)
            .frame(maxWidth: .infinity, alignment: .leading)
         
         HStack{
            if visible {
               TextField(text: $textValue) {
                  Text("Password")
                     .font(Fonts.regular14)
               }
            }else{
               SecureField(text: $textValue) {
                  Text("Password")
                     .font(Fonts.regular14)
               }
            }
            
            Button(action: {
               visible.toggle()
            }, label: {
               Image(systemName: visible ? "eye.slash" : "eye")
            })
            .foregroundStyle(Colors.purple300)
         }
         .padding()
         .background(.neutral)
         .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
      }
   }
}

#Preview {
   CustomPasswordForm(visible: .constant(true), title: "Password", textValue: .constant(""))
}
