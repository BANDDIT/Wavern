//
//  SignUpForm.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct SignUpForm: View {
   @ObservedObject var model: SignUpModel
   
   var body: some View {
      VStack {
         CustomForm(textTitle: "Name", textValue: $model.name)
            .padding(.bottom)
         
         CustomForm(textTitle: "Email", textValue: $model.email)
            .padding(.bottom)
         
         CustomPasswordForm(visible: $model.isPasswordVisible, title: "Password", textValue: $model.password)
            .padding(.bottom)
         
         CustomPasswordForm(visible: $model.isPasswordVisible, title: "Confirm Password", textValue: $model.confirmPassword)
      }
   }
}

//#Preview {
//   SignUpForm()
//}
