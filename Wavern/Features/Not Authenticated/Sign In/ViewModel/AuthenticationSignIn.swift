//
//  AuthenticationSignIn.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import Foundation
import SwiftUI

class AuthenticationSignIn: ObservableObject {
   @Published var email: String = ""
   @Published var password: String = ""
   @Published var isPasswordVisible: Bool = false
   
   func areTextFieldsFilled() -> Bool {
      return email.isEmpty || password.isEmpty
   }
   
   func navigationLink() -> some View{
      if areTextFieldsFilled(){
         return CustomNavigationLink(bgColor: Colors.neutral300, txtColor: Colors.neutral500, text: "Login")
      }else{
         return CustomNavigationLink(bgColor: Colors.purple600, txtColor: Colors.white, text: "Login")
      }
   }
}
