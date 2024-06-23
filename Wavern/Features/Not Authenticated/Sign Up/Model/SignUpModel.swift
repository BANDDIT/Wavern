//
//  SignUpModel.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

class SignUpModel: ObservableObject {
   @Published var name: String = ""
   @Published var email: String = ""
   @Published var password: String = ""
   @Published var confirmPassword: String = ""
   @Published var isPasswordVisible: Bool = false
}
