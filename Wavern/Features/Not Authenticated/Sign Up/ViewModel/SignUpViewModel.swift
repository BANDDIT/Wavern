//
//  AuthenticationSignUp.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import Foundation
import SwiftUI

struct SignUpViewModel {
   func areTextFieldsFilled(model: SignUpModel) -> Bool {
      return model.name.isEmpty || model.email.isEmpty || model.password.isEmpty || model.confirmPassword.isEmpty
   }
   
   func navigationLink(model: SignUpModel) -> some View{
      if areTextFieldsFilled(model: model){
         return CustomNavigationLink(bgColor: Colors.neutral300, txtColor: Colors.neutral500, text: Phrases.signUpTitle)
      }else{
         return CustomNavigationLink(bgColor: Colors.purple600, txtColor: Colors.white, text: Phrases.signUpTitle)
      }
   }
}
