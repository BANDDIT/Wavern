//
//  AuthenticationSignIn.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import Foundation
import SwiftUI

struct LoginViewModel {
   func areTextFieldsFilled(model: LoginModel) -> Bool {
      return model.email.isEmpty || model.password.isEmpty
   }
   
   func navigationLink(model: LoginModel) -> some View{
      if areTextFieldsFilled(model: model){
         return CustomNavigationLink(bgColor: Colors.neutral300, txtColor: Colors.neutral500, text: "Login")
      }else{
         return CustomNavigationLink(bgColor: Colors.purple600, txtColor: Colors.white, text: "Login")
      }
   }
}
