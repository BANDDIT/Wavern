//
//  LoginForm.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct LoginForm: View {
   @ObservedObject var model: LoginModel
   
   var viewModel = LoginViewModel()
   
   var body: some View {
      VStack {
         CustomForm(textTitle: "Email", textValue: $model.email)
            .padding(.bottom)
         
         CustomPasswordForm(visible: $model.isPasswordVisible, title: "Password", textValue: $model.password)
      }
   }
}

//#Preview {
//   LoginForm()
//}
