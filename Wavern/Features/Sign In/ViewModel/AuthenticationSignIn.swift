//
//  AuthenticationSignIn.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import Foundation
import SwiftUI

struct AuthenticationSignIn {   
   @State static var email: String = ""
   @State static var password: String = ""
   @State static var isPasswordVisible: Bool = false
   
   static var areTextFieldsFilled: Bool {
      email.isEmpty || password.isEmpty
   }
}
