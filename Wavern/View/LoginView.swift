//
//  LoginView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct LoginView: View {
   // TODO: Move to view model
   @State var email: String = ""
   @State var password: String = ""
   @State private var isPasswordVisible: Bool = false
   
   // TODO: Move to view model
   private var areTextFieldsFilled: Bool {
      email.isEmpty || password.isEmpty
   }
   
   var body: some View {
      VStack{
         Spacer()
         
         VStack{
            Text("Login")
               .font(.title)
               .fontWeight(.semibold)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: Form
            VStack {
               VStack {
                  Text("Email")
                     .font(.title2)
                     .fontWeight(.semibold)
                     .frame(maxWidth: .infinity, alignment: .leading)
                  
                  TextField(text: $email) {
                     Text("Email")
                  }
                  .frame(height: 52)
                  .padding(.horizontal)
                  .background(.neutral)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.bottom, 18)
               
               Text("Password")
                  .font(.title2)
                  .fontWeight(.semibold)
                  .frame(maxWidth: .infinity, alignment: .leading)
               
               HStack {
                  if isPasswordVisible {
                     TextField(text: $password) {
                        Text("Password")
                     }
                  } else {
                     SecureField(text: $password) {
                        Text("Password")
                     }
                  }
                  
                  Button(action: {
                     isPasswordVisible.toggle()
                  }) {
                     Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                        .foregroundColor(.gray)
                  }
               }
               .frame(height: 52)
               .padding(.horizontal)
               .background(.neutral)
               .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(.top, 14)
            .padding(.bottom, 32)
            
            // MARK: Button
            VStack{
               NavigationLink(destination: LoginView()) {
                  Text("Login")
                     .frame(minWidth: 0, maxWidth: .infinity)
                     .font(.system(size: 17))
                     .fontWeight(.semibold)
                     .padding()
                     .foregroundColor(areTextFieldsFilled ? .neutral500 : .white)
                     .background(areTextFieldsFilled ? .neutral300 : .primaryPurple)
                     .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.bottom, 16)
               .disabled(areTextFieldsFilled)
               
               HStack{
                  Text("Don't have an account?")
                     .fontWeight(.semibold)
                  
                  NavigationLink {
                     SignUpView()
                  } label: {
                     Text("Sign Up")
                  }
                  .foregroundStyle(.primaryPurple)
                  .fontWeight(.semibold)
                  
               }
            }
         }
         .padding(.horizontal, 28)
         
         Spacer()
      }
   }
}

#Preview {
   LoginView()
}
