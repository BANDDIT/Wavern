//
//  LoginForm.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct LoginForm: View {
   @StateObject private var model = LoginModel()
   var viewModel = LoginViewModel()
   
   var body: some View {
      VStack {
         VStack {
            Text("Email")
               .font(Fonts.semibold14)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField(text: $model.email) {
               Text("Email")
                  .font(Fonts.regular14)
            }
            .padding()
            .background(.neutral)
            .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
         }
         .padding(.bottom, 18)
         
         Text("Password")
            .font(Fonts.semibold14)
            .frame(maxWidth: .infinity, alignment: .leading)
         
         HStack {
            if model.isPasswordVisible {
               
               TextField(text: $model.password) {
                  Text("Password")
                     .font(Fonts.regular14)
               }
               
            } else {
               
               SecureField(text: $model.password) {
                  Text("Password")
                     .font(Fonts.regular14)
               }
               
            }
            
            Button(action: {
               model.isPasswordVisible.toggle()
            }) {
               Image(systemName: model.isPasswordVisible ? "eye.slash" : "eye")
                  .foregroundColor(.gray)
            }
         }
         .padding()
         .background(.neutral)
         .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
      }
   }
}

#Preview {
   LoginForm()
}
