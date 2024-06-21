//
//  LoginView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct LoginView: View {
   // TODO: Move to view model
   @StateObject private var viewModel = AuthenticationSignIn()
   
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
                  
                  TextField(text: $viewModel.email) {
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
                  if viewModel.isPasswordVisible {
                     TextField(text: $viewModel.password) {
                        Text("Password")
                     }
                  } else {
                     SecureField(text: $viewModel.password) {
                        Text("Password")
                     }
                  }
                  
                  Button(action: {
                     viewModel.isPasswordVisible.toggle()
                  }) {
                     Image(systemName: viewModel.isPasswordVisible ? "eye.slash" : "eye")
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
                  viewModel.navigationLink()
               }
               .padding(.bottom, 16)
               .disabled(viewModel.areTextFieldsFilled())
               
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
