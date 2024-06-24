//
//  LoginModel.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

class LoginModel: ObservableObject {
   @Published var email: String = ""
   @Published var password: String = ""
   @Published var isPasswordVisible: Bool = false
}
